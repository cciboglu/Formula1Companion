//
//  MainMenuViewModel.swift
//  Formula 1 Companion
//
//  Created by Caner on 16.04.23.
//

import Foundation
import SwiftUI
import os

@MainActor
class MainMenuViewModel: ObservableObject {
    @Published var showImage = true
    @Published var lastRace = Race(date: "",
                                   time: "",
                                   raceName: "",
                                   location: "",
                                   country: "",
                                   qualifiyingResult: [],
                                   raceResult: [])
    @Published var constructorStandings = ConstructorStandings(standings: [])
    @Published var driverStandings = DriverStandings(standings: [])
    @Published var images = [
        ImageItem(image: Image("f1Wallpaper1")),
        ImageItem(image: Image("f1Wallpaper2")),
        ImageItem(image: Image("f1Wallpaper3"))
    ]
    init() {
        getMockElements()
    }
    func getMockElements() {
        let logger = Logger()
        let (driverStandings, constructorStandings) = ContentManager.getMockStandings(logger: logger)
        self.driverStandings = driverStandings
        self.constructorStandings = constructorStandings
        let tmpRaces = ContentManager.getMockRaces(logger: logger)
        self.lastRace = tmpRaces[0]
    }
}
