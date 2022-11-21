//
//  AllCharactersResquestModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 15/11/22.
//

import Foundation


class AllCharactersResquest: URLRequestBuilder {
    typealias Response = CharacterInfo
    var apiMode: ApiMode = .prod
    var path: APIPath = CharacterPaths.all
    var method: HttpMethod = .GET
}
