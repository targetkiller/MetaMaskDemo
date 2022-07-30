//
//  MMTokenProvider.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/29.
//

import Foundation

let MMTokenStaticList = [
    MMTokenModel(name: "Bitcoin", priceUsd: "24022.293929"),
    MMTokenModel(name: "Ethereum", priceUsd: "1704.5334"),
    MMTokenModel(name: "Tether", priceUsd: "0.999534"),
    MMTokenModel(name: "USD Coin", priceUsd: "0.998432"),
    MMTokenModel(name: "BNB", priceUsd: "289.23774"),
    MMTokenModel(name: "Cardano", priceUsd: "0.52941715"),
    MMTokenModel(name: "Binance USD", priceUsd: "0.999432425"),
    MMTokenModel(name: "XRP", priceUsd: "0.37222718432"),
]

struct MMTokenList: Codable {
    var data: [MMTokenModel]
}

class MMTokenProvider {
    func loadTokenList(completion: @escaping ([MMTokenModel]) -> ()) {
        if let url = URL(string: "https://api.coincap.io/v2/assets") {
            URLSession.shared.dataTask(with: url) { data, res, error in
                do {
                    let result = try JSONDecoder().decode(MMTokenList.self, from: data ?? Data())
                    print("aaaa", result)
                    DispatchQueue.main.async {
                        completion(result.data)
                    }
                } catch {
                    print(error)
                }
                    
            }.resume()
        }
    }
}

