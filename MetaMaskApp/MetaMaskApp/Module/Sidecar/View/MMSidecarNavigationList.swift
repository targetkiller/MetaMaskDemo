//
//  MMSidecarNavigationList.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/31.
//

import SwiftUI

struct MMSidecarNavigationList: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(Color.clear)
                .frame(height: 10)
            
            ForEach(MMSidecarNavigationListModel) { item in
                Button {
                    
                } label: {
                    HStack(spacing: 8) {
                        item.icon
                            .foregroundColor(Color(MMColorTitle))
                            .font(.system(size: 18))
                        
                        Text(item.title)
                            .font(.system(size: 16))
                            .foregroundColor(Color(MMColorTitle))
                        
                        Spacer()
                    }
                }
                .frame(height: 36)
                .padding(.horizontal, 20)
            }
            
            Rectangle()
                .fill(Color.clear)
                .frame(height: 10)
            
            Divider()
        }
    }
}
