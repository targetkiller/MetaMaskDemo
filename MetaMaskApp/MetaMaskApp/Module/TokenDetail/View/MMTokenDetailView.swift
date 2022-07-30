//
//  MMTokenDetailView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMTokenDetailView: View {
    var token: MMTokenModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack() {
                MMTokenDetailHeaderView(token: token)
                Spacer()
                Text(MMStringTokenDetailEmpty)
                    .font(.system(size: 18))
                    .foregroundColor(Color(MMColorEmptyTips))
                Spacer()
            }
            .navigationBarTitle(token.name, displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color(MMColorTheme))
                }),
                
                trailing: Button(action: {
                    
                }, label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color(MMColorTheme))
                })
            )
        }
        .navigationBarHidden(true)
    }
}
