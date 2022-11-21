//
//  RickAndMorty_PathGenerationTest.swift
//  RickAndMorty_PathGenerationTest
//
//  Created by Rodrigo Candido on 21/11/22.
//

import XCTest
@testable import RickAndMortyApp

final class RickAndMorty_PathGenerationTest: XCTestCase {
    
    func test_AllCharacters_ShouldPass() {
        let allCharatersPath = AllCharactersResquest()
        XCTAssertEqual(
            allCharatersPath
                .request()
                .url?
                .absoluteString,
            "https://rickandmortyapi.com/api/character"
        )
    }
    
    func test_SingleCharacter_ShouldPass() {
        let sigleCharPath = SingleCharacterResquest(with: 2)
        XCTAssertEqual(
            sigleCharPath
                .request()
                .url?
                .absoluteString,
            "https://rickandmortyapi.com/api/character/2"
        )
    }
    
    func test_AllEpisodes_ShouldPass() {
        let allEpisodesPath = AllEpisodesRequest()
        XCTAssertEqual(
            allEpisodesPath
                .request()
                .url?
                .absoluteString,
            "https://rickandmortyapi.com/api/episode"
         )
    }
    
    func test_SingleEpisode_ShouldPass() {
        let singleEpisodePath = SingleEpisodeRequest(with: 3)
        XCTAssertEqual(
            singleEpisodePath
                .request()
                .url?
                .absoluteString,
            "https://rickandmortyapi.com/api/episode/3"
        )
    }
    
    func test_AllLocation_ShouldPass() {
        let allLocationPath = AllLocationsResquest()
        XCTAssertEqual(
            allLocationPath
                .request()
                .url?
                .absoluteString,
            "https://rickandmortyapi.com/api/location"
        )
    }
    
    func test_SingleLocation_ShouldPass() {
        let singleLocationPath = SingleLocationRequest(with: 4)
        XCTAssertEqual(
            singleLocationPath
                .request()
                .url?
                .absoluteString,
            "https://rickandmortyapi.com/api/location/4"
        )
    }
}
