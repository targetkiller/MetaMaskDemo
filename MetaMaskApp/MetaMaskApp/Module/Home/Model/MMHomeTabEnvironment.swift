//
//  MMHomeTabEnvironment.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation

public let MMHomeTabToken: Int = 0
public let MMHomeTabNFT: Int = 1

class MMHomeTabEnvironment: ObservableObject {
    @Published var tab = MMHomeTabToken
}

