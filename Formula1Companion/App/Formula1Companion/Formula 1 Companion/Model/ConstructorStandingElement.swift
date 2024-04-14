//
//  ConstructorStandingElement.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

class ConstructorStandingElement: Identifiable {
    var number: Int
    var constructor: Constructor
    var points: String
    var wins: String
    init(number: Int, constructor: Constructor, points: String, wins: String) {
        self.number = number
        self.constructor = constructor
        self.points = points
        self.wins = wins
    }
}
