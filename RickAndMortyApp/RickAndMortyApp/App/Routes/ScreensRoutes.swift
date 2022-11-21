//
//  ScreensRoutes.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import Foundation
import SwiftUI

enum ScreenRoutes {
    
    case main
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .main: Text("Main view")
            
        }
    }
}
