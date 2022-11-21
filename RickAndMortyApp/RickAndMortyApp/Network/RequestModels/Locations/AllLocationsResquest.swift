//
//  AllLocationsResquest.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation

class AllLocationsResquest: URLRequestBuilder {
    typealias Response = RMLocationInfo
    var apiMode: ApiMode = .prod
    var method: HttpMethod = .GET
    var path: APIPath = RMLocationPaths.all
}
