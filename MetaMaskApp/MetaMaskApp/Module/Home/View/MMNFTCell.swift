//
//  MMNFTCell.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMNFTCell: View {
    let item: MMNFTModel
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 20) {
                Image(item.avatar)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Rectangle())
                    .padding(.leading, 16)
                    
                VStack() {
                    Text(item.name)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color(MMColorTitle))
                }
                
                Spacer()
            }
            .frame(height: 65)
            
            Divider()
        }
    }
}

