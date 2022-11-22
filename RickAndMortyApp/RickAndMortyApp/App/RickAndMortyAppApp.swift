//
//  RickAndMortyAppApp.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import SwiftUI

@main
struct RickAndMortyAppApp: App {
    
    @StateObject var routerVm = RouterViewModel()
    var body: some Scene {
        WindowGroup {
            RouterView()
        }
    }
}
