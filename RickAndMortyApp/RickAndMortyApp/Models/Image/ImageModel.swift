//
//  ImageModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation
import SwiftUI

struct ImageModel: Codable {
    let name: String
    let url: URL
    
    init(_ url: URL) {
        self.name = url.absoluteString
        self.url = url
    }
}
