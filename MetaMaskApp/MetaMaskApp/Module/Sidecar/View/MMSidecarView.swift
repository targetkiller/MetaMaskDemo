//
//  MMSidecarView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMSidecarView: View {
    var user: MMUserModel!
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            MMSidecarHeaderView(user: user)
            MMSidecarActionGroup()
            MMSidecarNavigationList()
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .ignoresSafeArea()
    }
}
