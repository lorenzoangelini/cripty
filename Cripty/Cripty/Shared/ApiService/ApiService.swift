//
//  ApiService.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 03/08/21.
//

import Foundation
import Combine


struct Response<T> {
    let value: T
    let response: URLResponse
}

enum HTTPError: LocalizedError {
    case statusCode
    case post
}


protocol ApiServiceProtocal {
    func fetch<T>(_ request: URLRequest) -> AnyPublisher<Response<T>, Error> where T : Decodable
}

struct ApiService: ApiServiceProtocal {
    
   static let shared = ApiService()
    
    func fetch<T: Decodable>(_ request: URLRequest) -> AnyPublisher<Response<T>, Error> {
        return URLSession.shared
            .dataTaskPublisher(for: request) 
            .tryMap { result -> Response<T> in
                guard let response = result.response as? HTTPURLResponse, response.statusCode == 200 else {
                        throw HTTPError.statusCode
                    }
                let value = try JSONDecoder().decode(T.self, from: result.data)
                return Response(value: value, response: result.response)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}


enum BaseEndpoint: String {
    case messaryBasePath = "https://data.messari.io/api/"
}
