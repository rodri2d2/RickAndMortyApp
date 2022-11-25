//
//  NONEPAths.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation

enum NONEPaths: APIPath {
    case none
    var path: String {
        switch self {
        case .none: return ""
        }
    }
}
