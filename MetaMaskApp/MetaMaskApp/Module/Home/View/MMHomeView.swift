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
    init() {
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: MMColorTitle,
            .font: MMFontNavTitle
        ]
    }
    
    var body: some View {
        NavigationView {
            VStack() {
                MMHomeHeaderView(user: user)
                MMHomeTabContainerView()
            }
            .navigationBarTitle(MMStringHomeNavTitle, displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    
                }, label: {
                    Image(systemName: "rectangle.leadinghalf.inset.filled")
                        .foregroundColor(Color(MMColorTheme))
                }),
                
                trailing: Button(action: {
                    
                }, label: {
                    Image(systemName: "qrcode.viewfinder")
                        .foregroundColor(Color(MMColorTheme))
                })
            )
        }.ignoresSafeArea()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MMHomeView()
//    }
//}
