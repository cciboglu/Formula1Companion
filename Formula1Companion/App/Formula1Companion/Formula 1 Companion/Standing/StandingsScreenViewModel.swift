//
//  StandingsScreenViewModel.swift
//  Formula 1 Companion
//
//  Created by Caner on 17.04.23.
//

import Foundation
import os

@MainActor
class StandingsScreenViewModel: ObservableObject {
    @Published var picker: Int = 0
    @Published var standingsDrivers = DriverStandings(standings: [])
    @Published var standingsConstructor = ConstructorStandings(standings: [])
    init() {
        getAllMockElements()
    }
    func getAllMockElements() {
        let logger = Logger()
        let (driverStandings, constructorStanding) = ContentManager.getMockStandings(logger: logger)
        self.standingsConstructor = constructorStanding
        self.standingsDrivers = driverStandings
        logger.log("Set standings successful")
    }
}
