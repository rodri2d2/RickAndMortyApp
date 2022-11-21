//
//  RouterViewModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation

class RouterViewModel: ObservableObject {
    @Published var screen: ScreenRoutes = .main
    @Published var tab: TabRoutes = .characters
}
