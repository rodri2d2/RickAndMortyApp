//
//  SingleCharacterResquestModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 15/11/22.
//

import Foundation


class SingleCharacterResquest: URLRequestBuilder {

    typealias Response = Character
    var apiMode: ApiMode = .prod
    var path: APIPath
    
    init(with id: Int) {
        self.path = CharacterPaths.single(id: id)
    }
    
}
