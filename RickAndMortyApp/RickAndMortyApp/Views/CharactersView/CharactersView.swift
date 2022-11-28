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
            LazyVStack(spacing: 8 ) {
                ForEach(viewModel.state.characters) { character in
                    cellView(character: character)
                }
            }
            
        }
        .onAppear{
            viewModel.handle(.onAppear)
        }
    }
    
    private func cellView(character: Character) -> some View {
        ZStack(alignment: .leading) {
            if let url = URL(string: character.image) {
                ImageComponent(url)
            }
            
            Rectangle()
                .rotationEffect(
                    Angle(degrees: 90),
                    anchor: .bottomLeading
                )
                .background {
                    Color.black.opacity(0.5)
                }
                .frame(maxWidth: 100)
                .overlay {
                    Text(character.name)
                        .font(.title)
                        .foregroundColor(.white).rotationEffect(Angle(degrees: 90))
                        .frame(width: 200, height: 100)
                }
        }
        
    }

}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
