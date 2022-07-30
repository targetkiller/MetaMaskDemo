//
//  MMHomeNFTListView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMHomeNFTListView: View {
    private let itemsColumn: [GridItem] =
        Array(repeating: .init(.flexible()), count: 1)
    @State private var list: [MMNFTModel] = [MMNFTModel]()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: itemsColumn, spacing: 0) {
                ForEach(list) { item in
                    MMNFTCell(item: item)
                }
            }
        }
        .ignoresSafeArea()
        .onAppear() {
            MMNFTProvider().loadNFTList { data in
                self.list = data
            }
        }
    }
}
