//
//  MMUserModel.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation

struct MMUserModel: Equatable, Identifiable, Hashable {
    let id: String = UUID().uuidString
    let name: String
    let balance: String
    let walletAddress: String
    
    static public func ==(lhs: MMUserModel, rhs: MMUserModel) -> Bool {
        return lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.walletAddress == rhs.walletAddress
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(walletAddress)
    }
}
