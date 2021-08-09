//
//  AssetResponse.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 04/08/21.
//

import Foundation

struct AssetResponse: Codable {
    let assets: [Asset]
    
    enum CodingKeys: String, CodingKey {
            case assets = "data"
    }
}




