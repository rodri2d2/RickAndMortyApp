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
        let imageModel = ImageModel(url)
        let state = ImageComponentState(image: imageModel)
        _vm =  StateObject(wrappedValue: ImageComponentViewModel(state: state))
    }
    
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                Image("loadImage")
                    .resizable()
                    .frame(maxWidth: .infinity, idealHeight: 150)
            }
        }
        .onAppear {
            vm.handle(.onAppear)
        }
    }

}

struct ImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageComponent(URL(string: "")!)
    }
}
