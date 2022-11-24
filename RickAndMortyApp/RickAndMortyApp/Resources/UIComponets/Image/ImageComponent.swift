//
//  ImageComponent.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 24/11/22.
//

import SwiftUI

struct ImageComponent: View {
    
    @StateObject var vm: ImageComponentViewModel
    
    init(_ url: URL) {
        let state = ImageComponentState()
        _vm =  StateObject(wrappedValue: ImageComponentViewModel(state: state))
    }
    
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                Image(systemName: "questionmark")
            }
        }
    }
}

struct ImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageComponent(URL(string: "")!)
    }
}
