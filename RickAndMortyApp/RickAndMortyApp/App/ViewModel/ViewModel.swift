//
//  ViewModel.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 22/11/22.
//

import Foundation

protocol ViewModel: ObservableObject {
    associatedtype State
    associatedtype Action
    
    var state: State { get }
    func handle(_ action: Action)
}
