//
//  MMTokenProvider.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/29.
//

import Foundation

//// TODO: TQ replace from json
//let MMTokenList = [
//    MMTokenModel(name: "ETH", price: "$243.4", avatar: "arrow.down"),
//    MMTokenModel(name: "DIP", price: "$243.4", avatar: "arrow.down"),
//    MMTokenModel(name: "BTC", price: "$243.4", avatar: "arrow.down"),
//    MMTokenModel(name: "ERP", price: "$243.4", avatar: "arrow.down")
//]

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

