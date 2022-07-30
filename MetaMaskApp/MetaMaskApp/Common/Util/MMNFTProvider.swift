//
//  MMNFTProvider.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/29.
//

import Foundation

struct MMNFTList: Codable {
    var data: [MMNFTModel]
}

class MMNFTProvider {
    func loadNFTList(completion: @escaping ([MMNFTModel]) -> ()) {
        
        if let json = Bundle.main.url(forResource: "NFTMock",
                                      withExtension: "json") {
            do {
                let data = try Data(contentsOf: json)
                let result = try JSONDecoder().decode(MMNFTList.self, from: data)
                DispatchQueue.main.async {
                    completion(result.data)
                }
            } catch {
                print(error)
            }
        }
    }
}
