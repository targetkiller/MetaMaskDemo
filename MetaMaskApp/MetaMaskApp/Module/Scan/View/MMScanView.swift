//
//  MMScanView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI
import AVFoundation
import Photos

struct MMScanView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var showAlert = false
    
    @State private var session: AVCaptureSession = AVCaptureSession()
    
    @State private var photoOutput = AVCapturePhotoOutput()
    
    var body: some View {
        ZStack() {
            MMCameraPreview(session: session)
            
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Spacer()
                    
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color.white.opacity(0.8))
                    }.padding(.trailing, 24)
                }
                .frame(height: 60)
                .padding(.top, 34)
                
                Image(systemName: "square.dashed")
                    .font(.system(size: 220, weight: .light))
                    .foregroundColor(Color.white.opacity(0.3))
                    .padding(.top, 100)
                
                Text(MMStringScanTips)
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(Color.white.opacity(0.8))
                    .padding(.top, 70)
                
                Spacer()
            }
            .onAppear() {
                MMActionHelper().checkCamera { succ in
                    if succ == false {
                        self.showAlert.toggle()
                        return
                    }
                    
                    session.beginConfiguration()
                    session.sessionPreset = .photo
                    
                    do {
                        var defaultVideoDevice: AVCaptureDevice?
                        
                        if let backCameraDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
                            defaultVideoDevice = backCameraDevice
                        } else if let frontCameraDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front) {
                            defaultVideoDevice = frontCameraDevice
                        }
                        
                        guard let videoDevice = defaultVideoDevice else {
                            session.commitConfiguration()
                            return
                        }
                        
                        let videoDeviceInput = try AVCaptureDeviceInput(device: videoDevice)
                        
                        if session.canAddInput(videoDeviceInput) {
                            session.addInput(videoDeviceInput)
                            
                        } else {
                            print("Couldn't add video device input to the session.")
                            session.commitConfiguration()
                            return
                        }
                    } catch {
                        print("Couldn't create video device input: \(error)")
                        session.commitConfiguration()
                        return
                    }
                    
                    if session.canAddOutput(photoOutput) {
                        session.addOutput(photoOutput)
                        
                        photoOutput.isHighResolutionCaptureEnabled = true
                        photoOutput.maxPhotoQualityPrioritization = .quality
                        
                    } else {
                        print("Could not add photo output to the session")
                        session.commitConfiguration()
                        return
                    }
                    
                    session.commitConfiguration()
                    session.startRunning()
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text(MMStringScanDisableTipsTitle),
                    message: Text(MMStringScanDisableTipsDesp)
                )
            }
            .background(Color.clear)
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}
