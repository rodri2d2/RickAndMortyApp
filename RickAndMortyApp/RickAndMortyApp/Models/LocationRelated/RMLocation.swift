//
//  RMLocation.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation


/// RM Stands Rick And Morty.
/// Location Model itself
struct RMLocation: Identifiable, Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}


extension RMLocation {
    static func empty() -> Self {
        RMLocation(
            id: 0,
            name: "",
            type: "",
            dimension: "",
            residents: [],
            url: "",
            created: ""
        )
    }
    
    static func rmLocation() -> Self {
        RMLocation(
            id: 0,
            name: "Earth",
            type: "Planet",
            dimension: "Dimension C-137",
            residents: [
                
                "https://rickandmortyapi.com/api/character/1",
                "https://rickandmortyapi.com/api/character/2",
                
            ],
            url: "https://rickandmortyapi.com/api/location/1",
            created: "2017-11-10T12:42:04.162Z"
        )
    }
    
    static func rmLocations() -> [Self] {
        [
            Self.rmLocation(),
            Self.rmLocation()
        ]
    }
}
