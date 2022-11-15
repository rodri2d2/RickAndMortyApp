//
//  Network.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation
import Combine

protocol Network {
    func execute<T: URLRequestBuilder>(for request: T) -> AnyPublisher<T.Response, Error>
}
