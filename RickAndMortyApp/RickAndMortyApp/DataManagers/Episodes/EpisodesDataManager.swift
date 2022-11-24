//
//  EpisodesDataManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation
import Combine

class EpisodesDataManager: DataManager {
    
    var localDataService: LocalDataManager = LocalFileDataManager.shared
    var networkService: Network = NetworkManager.shared
    
    func fetchAll(request: AllEpisodesRequest) -> AnyPublisher<AllEpisodesRequest.Response, Error> {
        self.networkService.execute(for: request)
    }
    
    func fetchSingle(request: SingleEpisodeRequest) -> AnyPublisher<SingleEpisodeRequest.Response, Error> {
        self.networkService.execute(for: request)
    }
}
