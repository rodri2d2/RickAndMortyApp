//
//  ImageLocallFileManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation
import SwiftUI

class ImageLocallFileManager: LocalDataManager {
    
    
    static let shared = ImageLocallFileManager()
    
    private init() {}
    
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        
        createFolderIfNeed(folderName)
        
        guard
            let data = image.pngData(),
            let url = getURL(for: imageName, folderName: folderName)
        else { return }
        
        
        // Save image to path
        do {
           try data.write(to: url)
            print("Image saved!")
        } catch let error {
            print("ERROR: error saving image: \(error.localizedDescription )")
        }
       
    }
    
    func getImage(_ imageName: String, at folderName: String) -> UIImage? {
        
        guard
            let url = getURL(for: imageName, folderName: folderName),
            FileManager.default.fileExists(atPath: url.path)
        else { return nil }
        
        return UIImage(contentsOfFile: url.path)
        
    }
    
    private func createFolderIfNeed(_ folderName: String) {
        guard let url = getURL(for: folderName) else { return }
        
        if !FileManager.default
            .fileExists(atPath: url.path) {
            do {
                try FileManager.default
                    .createDirectory(at: url, withIntermediateDirectories: true)
            } catch let error {
                print("Error \(error)  - To create directory: \(folderName)")
            }
        }
    }
    
    private func getURL(for folderName: String) -> URL? {
      guard let url = FileManager.default
            .urls(for: .cachesDirectory, in: .userDomainMask)
            .first
        else { return nil }
        return url.appendingPathComponent(folderName)
    }
    
    private func getURL(for imageName: String, folderName: String) -> URL? {
        guard let folderURL = getURL(for: folderName) else { return nil }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
    
}

