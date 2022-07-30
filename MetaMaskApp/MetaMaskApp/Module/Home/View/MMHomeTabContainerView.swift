//
//  MMHomeTabContainerView.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import SwiftUI

struct MMHomeTabContainerView: View {
    @ObservedObject var obtab: MMHomeTabEnvironment = MMHomeTabEnvironment()
    @ObservedObject var tokenList: MMTokenEnvironment = MMTokenEnvironment()
    @ObservedObject var NFTList: MMNFTEnvironment = MMNFTEnvironment()
    
    init () {
        // initial data before request for network
        tokenList.list = MMTokenStaticList
    }
    
    var body: some View {
        VStack(spacing: 0) {
            MMHomeTabSelectionView()
                .environmentObject(obtab)
                .padding(.top, 20)
            
            Divider()
            
            TabView(selection: $obtab.tab) {
                MMHomeTokenListView()
                    .environmentObject(tokenList)
                    .tag(MMHomeTabToken)
                MMHomeNFTListView()
                    .environmentObject(NFTList)
                    .tag(MMHomeTabNFT)
            }
            .tabViewStyle(
                PageTabViewStyle(indexDisplayMode: .never))
        }
        .onAppear() {
            MMTokenProvider().loadTokenList { data in
                tokenList.list = data
            }
            MMNFTProvider().loadNFTList { data in
                NFTList.list = data
            }
        }
        .ignoresSafeArea()
    }
}

struct MMHomeTabSelectionView: View {
    @Namespace private var effect
    @EnvironmentObject var selection: MMHomeTabEnvironment
    
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
