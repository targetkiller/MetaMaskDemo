//
//  MMSidecarHeaderView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/31.
//

import SwiftUI

struct MMSidecarHeaderView: View {
    var user: MMUserModel!
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Rectangle()
                .fill(Color.clear)
                .frame(height: 50)
            
            Text("METAMASK")
                .font(.system(size: 15, weight: .heavy))
                .foregroundColor(Color.black)
                .padding(.bottom, 10)
                .padding(.horizontal, 20)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .font(.system(size: 40))
                .foregroundColor(Color(MMColorTitle))
                .background(Circle().stroke(Color(MMColorTheme), lineWidth: 3))
                .padding(.horizontal, 20)
            
            Text(user.name)
                .font(.system(size: 20))
                .foregroundColor(Color(MMColorTitle))
                .padding(.horizontal, 20)
            
            Text(user.balance)
                .font(.system(size: 14, weight: .light))
                .foregroundColor(Color(MMColorSubtitle))
                .padding(.horizontal, 20)
            
            Text(user.walletAddress)
                .font(.system(size: 13, weight: .light))
                .foregroundColor(Color(MMColorAddressForeground))
                .frame(width: 100)
                .truncationMode(.middle)
                .padding(.horizontal, 20)
            
            Divider()
        }
        .background(Color(MMColorSidecarHeaderBackground))
    }
}
