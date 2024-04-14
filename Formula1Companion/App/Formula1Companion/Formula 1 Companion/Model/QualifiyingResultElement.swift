//
//  QualifiyingStandingElement.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

class QualifiyingResultElement {
    var driver: Driver
    var position: Int
    var qa1: String
    var qa2: String
    var qa3: String
    init(driver: Driver, position: Int, qa1: String, qa2: String, qa3: String) {
        self.driver = driver
        self.position = position
        self.qa1 = qa1
        self.qa2 = qa2
        self.qa3 = qa3
    }
}
