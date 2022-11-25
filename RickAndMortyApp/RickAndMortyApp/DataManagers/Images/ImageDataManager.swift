//
//  ImageDataManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation
import Combine
import SwiftUI


class ImageDataManager: DataManager {
    
    var localDataService: LocalDataManager = ImageLocallFileManager.shared
    var networkService: Network = NetworkManager.shared
    
    // TODO: - Implement a way of save on local and follow current pattern
    var imageSubscription: AnyCancellable?
    private let fileManager = ImageLocallFileManager.shared
    private let FOLDER_NAME = "rm_images"
    private let imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
    
    // This function does not conform to the currect Architecture
    // TODO: - Correct the fucntion to adapt the current method and follow the same patern
    func fetchImage(request: ImageResquest) -> AnyPublisher<UIImage?, URLError>  {
        URLSession.shared
            .dataTaskPublisher(for: request.baseURL)
                   .map { UIImage(data: $0.data) }
                   .receive(on: DispatchQueue.main)
                   .eraseToAnyPublisher()
    }
}


