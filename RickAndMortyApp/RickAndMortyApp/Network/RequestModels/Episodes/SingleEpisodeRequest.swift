//
//  SingleEpisodeRequest.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation

class SingleEpisodeRequest: URLRequestBuilder {
    typealias Response = Episode
    var apiMode: ApiMode = .prod
    var method: HttpMethod = .GET
    var path: APIPath
    
    init(with id: Int) {
        self.path = EpisodePaths.single(id: id)
    }
}
