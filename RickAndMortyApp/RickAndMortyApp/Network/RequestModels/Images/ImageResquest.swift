//
//  ImageResquest.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation

class ImageResquest: URLRequestBuilder {
    typealias Response = CharacterInfo
    var apiMode: ApiMode = .prod
    var path: APIPath = CharacterPaths.all
    var method: HttpMethod = .GET
    var baseURL: URL
    
    init(path: APIPath, method: HttpMethod, baseURL: URL) {
        self.path = path
        self.method = method
        self.baseURL = baseURL
    }
}
