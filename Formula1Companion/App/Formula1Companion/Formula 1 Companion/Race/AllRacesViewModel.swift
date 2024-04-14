//
//  AllRacesViewModel.swift
//  Formula 1 Companion
//
//  Created by Caner on 17.04.23.
//

import Foundation
import os

class AllRacesViewModel: ObservableObject {
    @Published var picker = 0
    @Published var races: [Race] = []
    init() {
        getAllMockElements()
    }
    func getAllMockElements() {
        let logger = Logger()
        self.races = ContentManager.getMockRaces(logger: logger)
        logger.log("Set races successful")
    }
}
