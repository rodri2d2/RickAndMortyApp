//
//  RouterView.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 21/11/22.
//

import SwiftUI

struct RouterView: View {
    
    // MARK: - Properties
    @StateObject private var routerVM = RouterViewModel()
    @State private var showSheet = false
    @State private var showFullScreen = false
    
    // MARK: - Main
    var body: some View {
        
        routerVM
            .screen
            .view
            .environmentObject(routerVM)
    }
}
