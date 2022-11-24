//
//  ImageDataManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation

class ImageDataManager: DataManager {

    var localDataService: LocalDataManager = ImageLocallFileManager.shared
    var networkService: Network = NetworkManager.shared
    
    func fetchImage() {
        
    }
    
    private func getImageFromFile() {
   
    }
    
    private func downloadImage() {

    }
}
