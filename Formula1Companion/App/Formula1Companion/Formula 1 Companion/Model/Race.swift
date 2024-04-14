//
//  Race.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

class Race {
    var date: String
    var time: String
    var raceName: String
    var location: String
    var country: String
    var qualifiyingResult: [QualifiyingResultElement]
    var raceResult: [RaceResultElement]
    init(date: String,
         time: String,
         raceName: String,
         location: String,
         country: String,
         qualifiyingResult: [QualifiyingResultElement],
         raceResult: [RaceResultElement]) {
        self.date = date
        self.time = time
        self.raceName = raceName
        self.location = location
        self.country = country
        self.qualifiyingResult = qualifiyingResult
        self.raceResult = raceResult
    }
}
