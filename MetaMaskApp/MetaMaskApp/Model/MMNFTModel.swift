//
//  MMNFTModel.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation

struct MMNFTModel: Codable, Equatable, Identifiable, Hashable {
    var id: String = UUID().uuidString
    let name: String
    let avatar: String
    
    static public func ==(lhs: MMNFTModel, rhs: MMNFTModel) -> Bool {
        return lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.avatar == rhs.avatar
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(avatar)
    }
}
