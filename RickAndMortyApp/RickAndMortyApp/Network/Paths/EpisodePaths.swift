//
//  EpisodePaths.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation


enum EpisodePaths: APIPath {
    case all
    case single(id: Int)
    
    var path: String {
        switch self {
        case .all: return "episode"
        case .single(let id): return "episode/\(id)"
        }
    }
}
