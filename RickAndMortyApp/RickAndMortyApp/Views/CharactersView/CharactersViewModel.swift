//
//  CharactersViewModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 22/11/22.
//

import Foundation
import Combine

struct CharacterState {
    var dataState: DataModelState  = .idle
    var characters: [Character] = []
}

enum CharactersAction {
    case onAppear
}

class CharactersViewModel: ViewModel {
    
    typealias State = CharacterState
    typealias Action = CharactersAction
    
    // MARK: - Publishers
    @Published var state: CharacterState
    
    // MARK: - VM only
    private var characterDataManager = CharacterDataManager()
    private var cancellables = Set<AnyCancellable>()
    
    init(state: CharacterState) {
        self.state = state
    }
    
    func handle(_ action: CharactersAction) {
        switch action {
        case .onAppear: loadCharacters()

        }
    }
    
    private func loadCharacters() {
        let _ = characterDataManager
            .fetchAll(request: AllCharactersResquest())
            .sink { error in
                print("\(error)")
            } receiveValue: { charactersInfo in
               self.state.characters = charactersInfo.characters
                
            }
            .store(in: &cancellables)
    }
    
}
