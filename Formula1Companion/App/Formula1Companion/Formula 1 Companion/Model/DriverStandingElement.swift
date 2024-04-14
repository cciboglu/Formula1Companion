//
//  DriverStandingElement.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

class DriverStandingElement: Identifiable {
    var number: Int
    var points: String
    var wins: String
    var driver: Driver
    init(number: Int, points: String, wins: String, driver: Driver) {
        self.number = number
        self.points = points
        self.wins = wins
        self.driver = driver
    }
}
