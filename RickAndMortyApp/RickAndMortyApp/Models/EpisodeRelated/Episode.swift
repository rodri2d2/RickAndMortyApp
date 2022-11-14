//
//  Episode.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation

struct Episode: Identifiable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}


extension Episode {
    static func empty() -> Self {
        Episode(
            id: 0,
            name: "",
            airDate: "",
            episode: "",
            characters: [],
            url: "",
            created: ""
        )
    }
    
    static func episode() -> Self {
        Episode(
            id: 1,
            name: "Pilot",
            airDate: "December 2, 2013",
            episode: "S01E01",
            characters: [
                "https://rickandmortyapi.com/api/character/1",
                "https://rickandmortyapi.com/api/character/2"
            ],
            url: "https://rickandmortyapi.com/api/episode/1",
            created: "2017-11-10T12:56:33.798Z"
        )
    }
    
    static func episodes() -> [Self] {
        [
            Self.episode(),
            Self.episode()
        ]
    }
}
