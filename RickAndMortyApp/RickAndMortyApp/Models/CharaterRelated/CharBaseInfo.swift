//
//  CharBaseInfo.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation


/// Info model that contains very basic info about the whole API repose for all Characters (Refactor?)
struct CharBaseInfo: Codable {
    let count: Int
    let pages: Int
    let next: String
}
