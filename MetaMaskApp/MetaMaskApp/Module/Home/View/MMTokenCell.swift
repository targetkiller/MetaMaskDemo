//
//  MMTokenCell.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMTokenCell: View {
    let item: MMTokenModel
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 20) {
                Image(systemName: "bitcoinsign.square.fill")
                    .font(.system(size: 40))
                    .padding(.leading, 16)
                    .foregroundColor(Color(MMColorTheme))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.name)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color(MMColorTitle))
                    
                    Text("$\(item.priceUsd)")
                        .font(.system(size: 13, weight: .light))
                        .foregroundColor(Color(MMColorSubtitle))
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .padding(.trailing, 16)
            }
            .frame(height: 65)
            
            Divider()
        }
    }
}

