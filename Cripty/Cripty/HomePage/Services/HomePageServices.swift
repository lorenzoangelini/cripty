//
//  HomePageServices.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 04/08/21.
//

import Foundation
import Combine

protocol HomePageServiceProtocal {
    func getAssets() -> AnyPublisher<AssetResponse, Error>
}

struct HomePageServices: HomePageServiceProtocal {
    
    static var shared = HomePageServices()
    let apiClient = ApiService.shared
    let assetsUrl = URL(string: "\(BaseEndpoint.messaryBasePath.rawValue)v2/assets?fields=id,slug,symbol,metrics/all_time_high,metrics/market_data,metrics/marketcap,metrics/supply,metrics/blockchain_stats_24_hours,profile/general/overview/official_links&limit=30")!
    
    func getAssets() -> AnyPublisher<AssetResponse, Error> {
        let request = URLRequest(url: assetsUrl)
        return apiClient.fetch(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
    
}
