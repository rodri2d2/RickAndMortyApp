//
//  LocalFileDataManager.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation

class LocalFileDataManager: LocalDataManager {
    static let shared = LocalFileDataManager()
    private init() {}
}
