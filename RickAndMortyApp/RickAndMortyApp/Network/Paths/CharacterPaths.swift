//
//  CharacterPaths.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation


enum CharacterPaths: APIPath {
    case all
    case single(id: Int)
    
    var path: String {
        switch self {
        case .all: return "character"
        case .single(let id): return "character/\(id)"
        }
    }
}
