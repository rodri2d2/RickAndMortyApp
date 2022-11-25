//
//  CharactersView.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 22/11/22.
//

import SwiftUI

struct CharactersView: View {
    
    @EnvironmentObject var routerVM: RouterViewModel
    @StateObject var viewModel = CharactersViewModel(state: .init())
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack {
                ForEach(viewModel.state.characters) { character in
                    Text(character.name)
                    
                    if let url = URL(string: character.image) {
                        ImageComponent(url)
                    }
                    
                }
            }
            
        }
        .onAppear{
            viewModel.handle(.onAppear)
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
