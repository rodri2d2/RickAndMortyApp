//
//  RMLocationPaths.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation


enum RMLocationPaths: APIPath {
    case all
    case single(id: Int)
    
    var path: String {
        switch self {
        case .all: return "location"
        case .single(let id): return "location/\(id)"
        }
    }
}
