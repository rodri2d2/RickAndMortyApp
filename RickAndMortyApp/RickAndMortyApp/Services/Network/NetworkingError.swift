//
//  NetworkingError.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation


enum NetworkError: Error {
    
    case badURLResponse(url: URL)
    case decodingError
    case unknown
    
    var errorDescription: String? {
        switch self {
        case .badURLResponse(let url): return "Bad response from URL. \(url.absoluteURL)"
        case .unknown: return "Unknown error ocurred"
        case .decodingError: return "Error when translate date to actual Model"
        }
    }
}
