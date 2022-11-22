//
//  ScreensRoutes.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation
import SwiftUI

enum ScreenRoutes {
    
    case home
    case characters
    case episodes
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .home: HomeView()
        case .characters: CharactersView()
        case .episodes: RMLocationView()
        
        }
    }
}
