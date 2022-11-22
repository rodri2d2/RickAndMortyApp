//
//  DataModelState.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 22/11/22.
//

import Foundation

enum DataModelState: Equatable {
    
    case idle
    case loading
    case loaded
    
    static func == (lhs: DataModelState, rhs: DataModelState) -> Bool {
        switch (lhs, rhs) {
        case (.idle, .idle):
            return true
        case (.loading, .loading):
            return true
        case (.loaded, .loaded):
            return true
        default: return false
        }
    }
}
