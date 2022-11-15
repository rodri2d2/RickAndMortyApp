//
//  CharacterInfo.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation


/// CharacterInfo model to handle API reponse (Refactor?)
struct CharacterInfo: Codable {
    let info: CharBaseInfo
    let characters: [Character]
}
