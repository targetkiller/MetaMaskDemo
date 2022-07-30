//
//  MMHomeAction.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation
import SwiftUI

struct MMHomeAction: Equatable, Identifiable, Hashable {
    let id: String = UUID().uuidString
    let title: String!
    let icon: Image!
    
    static public func ==(lhs: MMHomeAction, rhs: MMHomeAction) -> Bool {
        return lhs.id == rhs.id && lhs.title == rhs.title
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
    }
}
