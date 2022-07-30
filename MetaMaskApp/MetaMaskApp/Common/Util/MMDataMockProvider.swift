//
//  MMDataMockProvider.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation
import SwiftUI

// String
let MMStringHomeNavTitle: String = "钱包"
let MMStringHomeAccountName: String = "TQ Account"
let MMStringHomeAccountBalance: String = "$24.34"
let MMStringHomeAddress: String = "0xFBb2f14f0a35Ec880F06062e24aae86feF601B64"
let MMStringHomeAddressCopyTips: String = "复制成功"
let MMStringActionReceive: String = "接收"
let MMStringActionBuy: String = "购买"
let MMStringActionSend: String = "发送"
let MMStringActionSwap: String = "交换"
let MMStringHomeTabToken: String = "代币"
let MMStringHomeTabNFT: String = "收藏品"

// Action
let MMHomeActionList = [
    MMHomeAction(title: MMStringActionReceive, icon: Image(systemName: "arrow.down")),
    MMHomeAction(title: MMStringActionBuy, icon: Image(systemName: "creditcard")),
    MMHomeAction(title: MMStringActionSend, icon: Image(systemName: "arrow.up.right")),
    MMHomeAction(title: MMStringActionSwap, icon: Image(systemName: "rectangle.2.swap"))
]
let MMHomeTabList = [
    MMHomeTabModel(title: MMStringHomeTabToken),
    MMHomeTabModel(title: MMStringHomeTabNFT)
]

