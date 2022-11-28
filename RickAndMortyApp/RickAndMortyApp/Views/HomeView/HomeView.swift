//
//  HomeView.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 22/11/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var routerVM: RouterViewModel
    
    var body: some View {
        TabView(selection: $routerVM.tab) {
            CharactersView()
                .tabItem {
                    Label("Characters", systemImage: "doc.text.image")
                }
                .tag(TabRoutes.characters)
            
            RMLocationView()
                .tabItem {
                    Label("Location", systemImage: "globe.europe.africa.fill")
                }
                .tag(TabRoutes.episodes)
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
