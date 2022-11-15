//
//  TESTVm.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 15/11/22.
//

import Foundation
import Combine

class TESTVm: ObservableObject {
    
    // MARK: - Publishers
    @Published var testCharacters: CharacterInfo?
    
    // MARK: - VM only
    private var characterDataManager = CharacterDataManager()
    private var cancellables = Set<AnyCancellable>()
    
    func fetchAll() {
        let characters = characterDataManager.fetchAll(request: AllCharactersResquest())
        characters
            .sink { error in
                print("\(error)")
            } receiveValue: { charactersInfo in
                print(charactersInfo)
                DispatchQueue.main.async {
                    self.testCharacters = charactersInfo
                }
            }
            .store(in: &cancellables)

    }
}
