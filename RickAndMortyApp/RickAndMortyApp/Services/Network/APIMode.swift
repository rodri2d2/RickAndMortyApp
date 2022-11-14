//
//  APIMode.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation

enum ApiMode {
    case dev
    case prod

    var host: String {
        switch self {
        case .dev:
            return "https://rickandmortyapi.com/api/"
        case .prod:
            return "https://rickandmortyapi.com/api/"
        }
    }
}
