//
//  ImageComponentViewModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import Foundation
import SwiftUI
import Combine

struct ImageComponentState {
    var dataState: DataModelState  = .idle
    var image: [Character] = []
}

enum ImageComponentAction {
    case onAppear
}

class ImageComponentViewModel: ViewModel {
    
    typealias State = ImageComponentState
    typealias Action = ImageComponentAction
    
    // MARK: - Publishers
    @Published var image: UIImage? = nil
    
    var state: ImageComponentState
    private var cancellables = Set<AnyCancellable>()
    
    init(state: ImageComponentState) {
        self.state = state
    }
    
    func handle(_ action: ImageComponentAction) {
        
    }
    
}


