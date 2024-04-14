//
//  DriverStandings.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

class DriverStandings: Identifiable {
    var standings: [DriverStandingElement]
    init(standings: [DriverStandingElement]) {
        self.standings = standings
    }
}
