//
//  NetworkManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation
import Combine


class NetworkManager: Network {
    
    static let shared = NetworkManager()
    private init() {}
    
    func execute<T>(for request: T) -> AnyPublisher<T.Response, Error> where T : URLRequestBuilder {
        let request = request.request()
        return URLSession.shared
            .dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: T.Response.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
