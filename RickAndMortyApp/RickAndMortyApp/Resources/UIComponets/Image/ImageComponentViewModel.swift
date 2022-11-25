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
    var image: ImageModel
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
    private var imageDataManager: ImageDataManager
    private var cancellables = Set<AnyCancellable>()
    
    init(state: ImageComponentState) {
        self.state = state
        self.imageDataManager = .init(imageName: state.image.name)
    }
    
    func handle(_ action: ImageComponentAction) {
        switch action {
        case .onAppear: fetchImage()
        }
    }
    
    private func fetchImage() {
        let resquest = ImageResquest(baseURL: self.state.image.url)
       self.imageDataManager.fetchImage(request: resquest)
            .tryMap({ $0 })
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    print("OK")
                case .failure(_):
                    print("Fail")
                }
            } receiveValue: { receivedImage in
                self.image = receivedImage
            }
            .store(in: &cancellables)
    }
    
}

