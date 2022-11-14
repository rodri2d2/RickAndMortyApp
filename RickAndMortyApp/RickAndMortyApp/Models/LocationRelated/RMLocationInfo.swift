//
//  RMLocationInfo.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation

/// RMLocationInfo model to handle API reponse (Refactor?)
struct RMLocationInfo {
    let info: LocationBaseInfo
    let locations: [RMLocation]
}
