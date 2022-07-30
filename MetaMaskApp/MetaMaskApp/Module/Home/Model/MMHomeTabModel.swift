//
//  MMHomeTabModel.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation

struct MMHomeTabModel: Equatable, Identifiable, Hashable {
    let id: String = UUID().uuidString
    let title: String!
    
    static public func ==(lhs: MMHomeTabModel, rhs: MMHomeTabModel) -> Bool {
        return lhs.id == rhs.id && lhs.title == rhs.title
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
    }
}
