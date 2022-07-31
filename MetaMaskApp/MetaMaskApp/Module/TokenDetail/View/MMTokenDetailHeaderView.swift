//
//  MMTokenDetailHeaderView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMTokenDetailHeaderView: View {
    var token: MMTokenModel!
    var body: some View {
        VStack(alignment: .center, spacing: 14) {
            Text("").padding(.top, 5)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .font(.system(size: 40))
                .foregroundColor(Color(MMColorTitle))
                .background(Circle().stroke(Color(MMColorTheme), lineWidth: 3))
            
            Text(token.name)
                .font(.system(size: 24))
                .foregroundColor(Color(MMColorTitle))
            
            Text("$\(token.priceUsd)")
                .font(.system(size: 14, weight: .light))
                .foregroundColor(Color(MMColorTitle))
            
            MMTokenDetailHeaderActionGroup()
        }
    }
}

struct MMTokenDetailHeaderActionGroup: View {
    var body: some View {
        HStack(spacing: 26) {
            ForEach(MMTokenDetailActionListModel) { item in
                MMHomeHeaderAction(model: item)
            }
        }
    }
}
