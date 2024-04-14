//
//  AllDriversConstructorsViewModel.swift
//  Formula 1 Companion
//
//  Created by Caner on 16.04.23.
//

import Foundation
import os

@MainActor
class AllDriversConstructorsViewModel: ObservableObject {
    @Published var typedText: String = ""
    @Published var loadingProgress = true
    @Published var drivers: [Driver]?
    @Published var constructors: [Constructor]?
    func loadContent() async {
        let logger = Logger()
        let (drivers, constructors) = await ContentManager.getDriversConstructors(logger: logger)
        logger.log("Set drivers and Constructors successful")

        self.drivers = drivers.map { driver in
            Driver(name: driver.familyName,
                   firstName: driver.givenName,
                   nationality: driver.nationality,
                   number: driver.permanentNumber,
                   birthday: driver.dateOfBirth,
                   constructor: Constructor(id: "", name: "", nationality: "", drivers: []))
        }
        self.constructors = constructors.map { constructor in
            Constructor(
                id: constructor.constructorId,
                name: constructor.name,
                nationality: constructor.nationality,
                drivers: [])
        }
        loadingProgress = false
        logger.log("Everyting loaded successful")
    }
}
