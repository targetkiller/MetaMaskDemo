//
//  MMTokenModel.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation

struct MMTokenModel: Codable, Equatable, Identifiable, Hashable {
    var id: String = UUID().uuidString
    let name: String
    let priceUsd: String
    
    static public func ==(lhs: MMTokenModel, rhs: MMTokenModel) -> Bool {
        return lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.priceUsd == rhs.priceUsd
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
    }
}
