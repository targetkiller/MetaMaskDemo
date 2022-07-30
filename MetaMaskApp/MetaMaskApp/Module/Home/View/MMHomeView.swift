//
//  MMHomeView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/29.
//

import SwiftUI

struct MMHomeView: View {
    let user: MMUserModel = MMUserModel(name: MMStringHomeAccountName,
                                        balance: MMStringHomeAccountBalance,
                                        walletAddress: MMStringHomeAddress)
    
    @State private var showScan = false
    @State private var showMenu = false
    @Namespace private var sidecar
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: MMColorTitle,
            .font: MMFontNavTitle
        ]
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            NavigationView {
                ZStack(alignment: .leading) {
                    VStack() {
                        MMHomeHeaderView(user: user)
                        MMHomeTabContainerView()
                    }
                }
                .navigationBarTitle(MMStringHomeNavTitle, displayMode: .inline)
                .navigationBarItems(
                    leading: Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                        }
                    }, label: {
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(Color(MMColorTheme))
                    }),
                    
                    trailing: Button(action: {
                        self.showScan.toggle()
                    }, label: {
                        Image(systemName: "qrcode.viewfinder")
                            .foregroundColor(Color(MMColorTheme))
                    }).fullScreenCover(isPresented: $showScan, content: {
                        MMScanView()
                    })
                )
            }
            .disabled(self.showMenu)
            .ignoresSafeArea()
            
            Rectangle()
                .fill(Color.black)
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .leading)
                .ignoresSafeArea()
                .blur(radius: 10)
                .opacity(self.showMenu ? 0.5 : 0)
                .onTapGesture {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }
            
            MMSidecarView(user: user)
                .frame(width: UIScreen.main.bounds.size.width * 2 / 3)
                .offset(x: self.showMenu == true ? 0 :
                            -UIScreen.main.bounds.size.width * 2 / 3)
                .matchedGeometryEffect(id: "sidecar", in: sidecar)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MMHomeView()
//    }
//}
