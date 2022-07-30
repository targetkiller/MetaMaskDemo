//
//  MMHomeHeaderView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/29.
//

import SwiftUI

struct MMHomeHeaderView: View {
    var user: MMUserModel!
    var body: some View {
        VStack(alignment: .center, spacing: 14) {
            Text("").padding(.top, 5)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .font(.system(size: 40))
                .foregroundColor(Color(MMColorTitle))
                .background(Circle().stroke(Color(MMColorTheme), lineWidth:3))
            
            Text(user.name)
                .font(.system(size: 24))
                .foregroundColor(Color(MMColorTitle))
            
            Text(user.balance)
                .font(.system(size: 14, weight: .light))
                .foregroundColor(Color(MMColorTitle))
            
            MMHomeHeaderAddress(walletAddress: user.walletAddress)
            MMHomeHeaderActionGroup()
        }
    }
}

struct MMHomeHeaderAddress: View {
    let walletAddress: String!
    @State private var showCopy = false
    var body: some View {
        Button {
            self.showCopy.toggle()
            MMActionHelper().doCopyAction(walletAddress)
        } label: {
            Text(walletAddress)
                .font(.system(size: 14, weight: .light))
                .foregroundColor(Color(MMColorAddressForeground))
                .truncationMode(.middle)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .lineSpacing(50)
        }
        .alert(isPresented: $showCopy) {
            Alert(
                title: Text(MMStringHomeAddressCopyTips),
                message: Text(walletAddress)
            )
        }
        .background(Color(MMColorAddressBackground))
        .cornerRadius(25)
        .frame(width: 130, height: 50)
    }
}

struct MMHomeHeaderActionGroup: View {
    var body: some View {
        HStack(spacing: 26) {
            ForEach(MMHomeActionList) { item in
                MMHomeHeaderAction(model: item)
            }
        }
    }
} 

struct MMHomeHeaderAction: View {
    let model: MMHomeAction!
    var body: some View {
        Button {
            
        } label: {
            VStack(alignment: .center, spacing: 8) {
                ZStack() {
                    model.icon.foregroundColor(.white)
                }
                .frame(width: 34, height: 34, alignment: .center)
                .background(Circle().fill(Color(MMColorTheme)))
                
                Text(model.title)
                    .font(.system(size: 15, weight: .regular))
            }
        }
    }
}
