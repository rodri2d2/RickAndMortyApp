//
//  ContentView.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm: TESTVm
    
    var body: some View {
        VStack {
            Text("TEsting")

            if let characters = vm.testCharacters {
                ForEach(characters.characters) { character in
                    Text(character.name)
                }
            }

        }
        .onAppear {
            vm.fetchAll()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: TESTVm())
    }
}
