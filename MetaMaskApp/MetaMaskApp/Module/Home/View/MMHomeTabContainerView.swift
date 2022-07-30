//
//  MMHomeTabContainerView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMHomeTabContainerView: View {
    @ObservedObject var obtab: MMHomeTabEnvironment = MMHomeTabEnvironment()
    
    var body: some View {
        VStack(spacing: 0) {
            MMHomeTabSelectionView()
                .environmentObject(obtab)
                .padding(.top, 20)
            
            Divider()
            
            TabView(selection: $obtab.tab) {
                MMHomeTokenListView()
                    .tag(MMHomeTabToken)
                MMHomeNFTListView()
                    .tag(MMHomeTabNFT)
            }
            .tabViewStyle(
                PageTabViewStyle(indexDisplayMode: .never))
        }.ignoresSafeArea()
    }
}

struct MMHomeTabSelectionView: View {
    @EnvironmentObject var selection: MMHomeTabEnvironment
    @Namespace private var effect
    
    var body: some View {
        HStack {
            ForEach(0 ..< MMHomeTabList.count, id:\.self) {
                i in VStack {
                    Text(MMHomeTabList[i].title)
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(selection.tab == i ?
                                         Color(MMColorTheme) : Color(MMColorTitle))
                    if selection.tab == i {
                        Rectangle()
                            .fill(Color(MMColorTheme))
                            .frame(height: 2)
                            .matchedGeometryEffect(id: "effect", in: effect)
                    } else {
                        Rectangle()
                            .fill(Color.clear)
                            .frame(height: 2)
                    }
                }.onTapGesture {
                    withAnimation() {
                        selection.tab = i
                    }
                }
            }
        }
    }
}
