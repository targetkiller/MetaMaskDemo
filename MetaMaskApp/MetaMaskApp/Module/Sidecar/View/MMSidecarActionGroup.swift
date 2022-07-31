//
//  MMSidecarActionGroup.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/31.
//

import SwiftUI

struct MMSidecarActionGroup: View {
    private let horPadding = 10.0
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0) {
                Spacer()
                ForEach(MMSidecarActionGroupListModel) { item in
                    Button {
                        
                    } label: {
                        HStack(spacing: horPadding) {
                            item.icon
                                .foregroundColor(Color(MMColorTheme))
                            
                            Text(item.title)
                                .font(.system(size: 16))
                                .foregroundColor(Color(MMColorTheme))
                        }
                    }
                    .frame(width: 100, height: 36)
                    .overlay(
                        Capsule(style: .circular)
                            .stroke(Color(MMColorTheme), lineWidth: 1.5)
                    )
                    
                    Spacer()
                }
            }
            .frame(height: 60)
            
            Divider()
        }
    }
}
