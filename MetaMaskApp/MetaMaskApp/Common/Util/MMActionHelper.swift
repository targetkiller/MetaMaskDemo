//
//  MMActionHelper.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation
import SwiftUI
import Photos

class MMActionHelper {
    func doCopyAction(_ value: String) {
        UIPasteboard.general.setValue(value, forPasteboardType: "public.plain-text")
    }

    func checkCamera(completion: @escaping (Bool) -> ()) {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
            case .authorized:
                DispatchQueue.main.async {
                    completion(true)
                }
                break
            case .notDetermined:
                AVCaptureDevice.requestAccess(for: .video, completionHandler: { granted in
                    DispatchQueue.main.async {
                        completion(granted)
                    }
                })
            default:
                DispatchQueue.main.async {
                    completion(false)
                }
                break;
        }
    }
}
