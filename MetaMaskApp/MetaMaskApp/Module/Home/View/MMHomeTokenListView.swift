//
//  MMHomeTokenListView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMHomeTokenListView: View {
    @EnvironmentObject var env: MMTokenEnvironment
    
    private let itemsColumn: [GridItem] =
        Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: itemsColumn, spacing: 0) {
                ForEach(env.list) { item in
                    
                    NavigationLink(
                        destination: MMTokenDetailView(token: item)
                    ) {
                        MMTokenCell(item: item)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}
