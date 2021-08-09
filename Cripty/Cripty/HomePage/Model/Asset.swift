//
//  Asset.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 04/08/21.
//

import Foundation


struct Asset: Codable, Identifiable {
    
    let id, symbol, slug: String
    let metrics: Metrics?
    
}

struct Metrics: Codable {
    
    let allTimeHigh: AllTimeHigh?
    let marketData: MarketData?
    let marketCap: MarketCap?
    
    enum CodingKeys: String, CodingKey {
        case allTimeHigh = "all_time_high"
        case marketData = "market_data"
        case marketCap = "marketcap"

        
    }
    
}

struct AllTimeHigh: Codable {
    let price : Float?
    let percentDown: Float?
    let percentUp: Float?
    let at: String?
    let daysSince: Int?
    
    enum CodingKeys: String, CodingKey {
        case percentDown = "percent_down"
        case percentUp = "percent_up"
        case daysSince = "days_since"
        case price
        case at
        
    }
}

struct MarketData: Codable {
    let priceUsd: Float?
    let volumeLast24hours: Float?
    
    enum CodingKeys: String, CodingKey {
        case volumeLast24hours = "volume_last_24_hours"
        case priceUsd = "price_usd"
    }
}

struct MarketCap: Codable {
    let rank: Int?
    let marketcapDominancePercent: Float?
    enum CodingKeys: String, CodingKey {
        case marketcapDominancePercent = "marketcap_dominance_percent"
        case rank
    }
}
