//
//  EpisodeInfo.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation

struct EpisodeInfo: Codable {
    let info: EpisodeBaseInfo
    let episodes: [Episode]
}
