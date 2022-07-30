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
let MMStringHomeAccountName: String = "TQTan"
let MMStringHomeAccountBalance: String = "$2022.73"
let MMStringHomeAddress: String = "0xFBb2f14f0a35Ec990F06062e24aae86feF601B64"
let MMStringHomeAddressCopyTips: String = "复制成功"
let MMStringActionReceive: String = "接收"
let MMStringActionBuy: String = "购买"
let MMStringActionSend: String = "发送"
let MMStringActionSwap: String = "交换"
let MMStringHomeTabToken: String = "代币"
let MMStringHomeTabNFT: String = "收藏品"
let MMStringTokenDetailEmpty: String = "您没有交易！"
let MMStringScanTips: String = "正在扫描..."
let MMStringScanDisableTipsTitle: String = "打开摄像头失败"
let MMStringScanDisableTipsDesp: String = "请到系统设置重新打开摄像头权限"
let MMStringActionWalletSend: String = "发送"
let MMStringActionWalletCharge: String = "充值"
let MMStringSidecarNavBrowser: String = "浏览器"
let MMStringSidecarNavWallet: String = "钱包"
let MMStringSidecarNavActivity: String = "活动"

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
let MMTokenDetailActionList = [
    MMHomeAction(title: MMStringActionReceive, icon: Image(systemName: "arrow.down")),
    MMHomeAction(title: MMStringActionSend, icon: Image(systemName: "arrow.up.right")),
    MMHomeAction(title: MMStringActionSwap, icon: Image(systemName: "rectangle.2.swap"))
]
let MMSidecarActionGroupList = [
    MMHomeAction(title: MMStringActionWalletSend, icon: Image(systemName: "arrow.up.forward")),
    MMHomeAction(title: MMStringActionWalletCharge, icon: Image(systemName: "arrow.down.to.line"))
]
let MMSidecarNavigationListModel = [
    MMHomeAction(title: MMStringSidecarNavBrowser, icon: Image(systemName: "globe.europe.africa")),
    MMHomeAction(title: MMStringSidecarNavWallet, icon: Image(systemName: "bag")),
    MMHomeAction(title: MMStringSidecarNavActivity, icon: Image(systemName: "list.bullet"))
]
