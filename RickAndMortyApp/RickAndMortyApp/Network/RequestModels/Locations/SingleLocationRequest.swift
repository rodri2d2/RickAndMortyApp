//
//  SingleLocationRequest.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation

class SingleLocationRequest: URLRequestBuilder {
    typealias Response = RMLocation
    var apiMode: ApiMode = .prod
    var method: HttpMethod = .GET
    var path: APIPath
    
    init(with id: Int) {
        self.path = RMLocationPaths.single(id: id)
    }
}
