//
//  CharacterDataManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 15/11/22.
//

import Foundation
import Combine

class CharacterDataManager: DataManager {
    
    var networkService: Network = NetworkManager.shared
    
    func fetchAll(request: AllCharactersResquest) -> AnyPublisher<AllCharactersResquest.Response, Error> {
        self.networkService.execute(for: request)
    }
    
    func fetchSingle(request: SingleCharacterResquest) -> AnyPublisher<SingleCharacterResquest.Response, Error> {
        self.networkService.execute(for: request)
    }
}
