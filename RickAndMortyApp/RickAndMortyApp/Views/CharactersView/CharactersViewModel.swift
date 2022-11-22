//
//  CharactersViewModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 22/11/22.
//

import Foundation

struct CharacterState {
    var dataState: DataModelState  = .idle
    var characters: [Character] = []
}

enum CharactersAction {
    case load
}

class CharactersViewModel: ViewModel {
        
    typealias State = CharacterState
    typealias Action = CharactersAction
    
    @Published var state: CharacterState
    
    
    init(state: CharacterState) {
        self.state = state
    }
    
    func handle(_ action: CharactersAction) {
        
    }
    
}
