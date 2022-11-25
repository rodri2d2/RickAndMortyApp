//
//  ImageResquest.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation

class ImageResquest: URLRequestBuilder {
    typealias Response = Data
    var apiMode: ApiMode = .prod
    var path: APIPath = NONEPaths.none
    var method: HttpMethod = .GET
    var baseURL: URL
    
    init(baseURL: URL) {
        self.baseURL = baseURL
    }
}
