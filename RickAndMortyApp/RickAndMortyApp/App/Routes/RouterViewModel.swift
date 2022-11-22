//
//  RouterViewModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation

class RouterViewModel: ObservableObject {
    @Published var screen: ScreenRoutes = .home
    @Published var tab: TabRoutes = .characters
}
