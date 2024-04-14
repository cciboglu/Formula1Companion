//
//  ResultElement.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

class RaceResultElement {
    var position: Int
    var laps: Int
    var finished: Bool
    var time: String
    var fastestLap: Int
    var timeFastestLap: String
    var driver: Driver
    init(position: Int,
         laps: Int,
         finished: Bool,
         time: String,
         fastestLap: Int,
         timeFastestLap: String,
         driver: Driver) {
        self.position = position
        self.laps = laps
        self.finished = finished
        self.time = time
        self.fastestLap = fastestLap
        self.timeFastestLap = timeFastestLap
        self.driver = driver
    }
}
