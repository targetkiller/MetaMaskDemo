//
//  MMHomeTokenListView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMHomeTokenListView: View {
    private let itemsColumn: [GridItem] =
        Array(repeating: .init(.flexible()), count: 1)
    @State private var list: [MMTokenModel] = [MMTokenModel]()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: itemsColumn, spacing: 0) {
                ForEach(list) { item in
                    
                    NavigationLink(destination: MMTokenDetailView(token: item)) {
                        MMTokenCell(item: item)
                    }
                }
            }
        }
        .ignoresSafeArea()
        .onAppear() {
            MMTokenProvider().loadTokenList { data in
                self.list = data
            }
        }
    }
}
