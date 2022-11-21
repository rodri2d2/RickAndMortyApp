//
//  AllEpisodesRequest.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation

class AllEpisodesRequest: URLRequestBuilder {
    typealias Response = EpisodeInfo
    var apiMode: ApiMode = .prod
    var method: HttpMethod = .GET
    var path: APIPath = EpisodePaths.all
}
