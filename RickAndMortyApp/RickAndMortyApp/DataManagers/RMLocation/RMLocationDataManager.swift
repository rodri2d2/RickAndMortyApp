//
//  RMLocationDataManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation
import Combine

class RMLocationDataManager: DataManager {
    
    var networkService: Network = NetworkManager.shared
    
    func fetchAll(request: AllLocationsResquest) -> AnyPublisher<AllLocationsResquest.Response, Error> {
        self.networkService.execute(for: request)
    }
    
    func fetchSingle(request: SingleLocationRequest) -> AnyPublisher<SingleLocationRequest.Response, Error> {
        self.networkService.execute(for: request)
    }
}
