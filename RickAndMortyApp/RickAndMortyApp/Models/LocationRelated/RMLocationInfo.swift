//
//  RMLocationInfo.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation

/// RMLocationInfo model to handle API reponse (Refactor?)
struct RMLocationInfo: Codable {
    let info: LocationBaseInfo
    let locations: [RMLocation]
    
    enum CodingKeys: String, CodingKey {
        case info
        case locations = "results"
    }
}
