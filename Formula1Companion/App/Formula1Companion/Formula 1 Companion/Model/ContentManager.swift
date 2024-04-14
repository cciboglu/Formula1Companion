//
//  ContentManager.swift
//  Formula 1 Companion
//
//  Created by Caner on 14.04.23.
//

import Foundation
import os

struct ContentManager {
    static var drivers: [Driver] = [
        Driver(name: "Perez",
               firstName: "Sergio",
               nationality: "Mexican",
               number: "11",
               birthday: "",
               constructor:
            Constructor(
                id: "22", name: "", nationality: "british", drivers: [])
              ),
        Driver(name: "Verstappen",
               firstName: "Max",
               nationality: "Dutch",
               number: "33",
               birthday: "1997-09-30",
               constructor: Constructor(
                id: "22", name: "", nationality: "british", drivers: [])
            ),
        Driver(name: "Hamilton",
               firstName: "Lewis",
               nationality: "British",
               number: "44",
               birthday: "1985-01-07",
               constructor: Constructor(
                id: "22", name: "", nationality: "british", drivers: [])
            ),
        Driver(name: "Russel",
               firstName: "George",
               nationality: "British",
               number: "63",
               birthday: "1998-02-15",
               constructor: Constructor(
                id: "22", name: "", nationality: "british", drivers: [])
            ),
        Driver(name: "Leclerc",
               firstName: "Charles",
               nationality: "Monegasque",
               number: "16",
               birthday: "1997-10-16",
               constructor:
            Constructor(
                id: "22", name: "", nationality: "british", drivers: [])
            ),
        Driver(name: "Sainz",
               firstName: "Carlos",
               nationality: "Spanish",
               number: "55",
               birthday: "1994-09-01",
               constructor:
            Constructor(
                id: "22", name: "", nationality: "british", drivers: [])
              )
    ]
    static func getMockDriversConstructors(logger: Logger) -> ([Driver], [Constructor]) {
        let constructors = [
            Constructor(id: "Red Bull",
                        name: "Red Bull",
                        nationality: "Austrian",
                        drivers: [
                            drivers[0],
                            drivers[1]
                        ]),
            Constructor(id: "Mercedes", name: "Mercedes", nationality: "German", drivers: [
                drivers[2],
                drivers[3]
            ]),
        ]
        drivers[0].constructor = constructors[0]
        drivers[1].constructor = constructors[0]
        drivers[2].constructor = constructors[1]
        drivers[3].constructor = constructors[1]
        logger.log("DriversConstructor Mock successful")

        return (drivers, constructors)
    }
    static func getMockStandings(logger: Logger) -> (DriverStandings, ConstructorStandings) {
        let logger = Logger()
        let (drivers, constructors) = getMockDriversConstructors(logger: logger)
        logger.log("Got DriverStandings successful")
        return (DriverStandings(standings: [
        DriverStandingElement(number: 1, points: "30", wins: "2", driver: drivers[0]),
        DriverStandingElement(number: 2, points: "25", wins: "1", driver: drivers[3]),
        DriverStandingElement(number: 3, points: "22", wins: "0", driver: drivers[1]),
        DriverStandingElement(number: 4, points: "14", wins: "0", driver: drivers[4]),
        DriverStandingElement(number: 5, points: "11", wins: "0", driver: drivers[2]),
        DriverStandingElement(number: 6, points: "4", wins: "0", driver: drivers[5]),
        ]),
        ConstructorStandings(standings: [
        ConstructorStandingElement(number: 1, constructor: constructors[0], points: "60", wins: "2"),
        ConstructorStandingElement(number: 2, constructor: constructors[1], points: "20", wins: "0"),
        ]))
    }
    static func getMockFutureRaces() -> [Race] {
            return [
                Race(date: "2023-05-01",
                     time: "T10:44:00+0000",
                     raceName: "Spanish Grand Prix",
                     location: "Barcelona",
                     country: "Spain",
                     qualifiyingResult: [],
                     raceResult: []),
                Race(date: "2023-08-01",
                     time: "T10:44:00+0000",
                     raceName: "Monegasque Grand Prix",
                     location: "Monaco",
                     country: "Monaco",
                     qualifiyingResult: [],
                     raceResult: []),
                Race(date: "2023-11-01",
                     time: "T10:44:00+0000",
                     raceName: "Brazil Grand Prix",
                     location: "Sao Paulo",
                     country: "Brazil",
                     qualifiyingResult: [],
                     raceResult: [])
            ]
    }
    static func getMockQualisOfRace(driver: [Driver]) -> [QualifiyingResultElement] {
        return [
            QualifiyingResultElement(driver: driver[0], position: 1, qa1: "1:33:40", qa2: "1:23:40", qa3: "1:09:30"),
            QualifiyingResultElement(driver: driver[1], position: 2, qa1: "1:11:40", qa2: "1:22:32", qa3: "1:10:30"),
            QualifiyingResultElement(driver: driver[2], position: 3, qa1: "1:30:40", qa2: "1:20:40", qa3: "1:10:40"),
            QualifiyingResultElement(driver: driver[3], position: 4, qa1: "1:30:40", qa2: "1:20:40", qa3: "1:10:40"),
            QualifiyingResultElement(driver: driver[5], position: 1, qa1: "1:33:40", qa2: "1:23:40", qa3: "1:09:30"),
        ]
    }
    static func getMockRaceOfRace(driver: [Driver]) -> [RaceResultElement] {
        return [
            RaceResultElement(position: 1,
                              laps: 44,
                              finished: true,
                              time: "05:23:44",
                              fastestLap: 1,
                              timeFastestLap: "1:23:12",
                              driver: driver[0]),
            RaceResultElement(position: 2,
                              laps: 44,
                              finished: true,
                              time: "05:34:22",
                              fastestLap: 12,
                              timeFastestLap: "1:10:12",
                              driver: driver[1]),
            RaceResultElement(
                    position: 3,
                    laps: 44,
                    finished: true,
                    time: "05:33:22",
                    fastestLap: 44,
                    timeFastestLap: "1:10:12",
                    driver: driver[2]),
            RaceResultElement(
                    position: 4,
                    laps: 44,
                    finished: true,
                    time: "05:33:22",
                    fastestLap: 2,
                    timeFastestLap: "",
                    driver: driver[3]
            ),
            RaceResultElement(
                position: 5,
                laps: 44,
                finished: true,
                time: "05:23:44",
                fastestLap: 1,
                timeFastestLap: "1:23:12",
                driver: driver[4]
            ),
            RaceResultElement(
                position: 6,
                laps: 44,
                finished: true,
                time: "05:34:22",
                fastestLap: 12,
                timeFastestLap: "1:10:12",
                driver: driver[5])
        ]
    }
    static func getMockRaces(logger: Logger) -> [Race] {
        let (driver, _) = getMockDriversConstructors(logger: logger)
        var races = [
            Race(date: "2023-01-01",
                 time: "T10:44:00+0000",
                 raceName: "British Grand Prix",
                 location: "Silverstone",
                 country: "Great Britain",
                 qualifiyingResult: getMockQualisOfRace(driver: driver),
                 raceResult: getMockRaceOfRace(driver: driver)),
            Race(date: "2023-02-01",
                 time: "T10:44:00+0000",
                 raceName: "Austrialian Grand Prix",
                 location: "Melbourne",
                 country: "Australia",
                 qualifiyingResult: getMockQualisOfRace(driver: driver),
                 raceResult: getMockRaceOfRace(driver: driver)),
            Race(date: "2023-03-01",
                 time: "T10:44:00+0000",
                 raceName: "Turkish Grand Prix",
                 location: "Istanbul",
                 country: "Turkey",
                 qualifiyingResult: getMockQualisOfRace(driver: driver),
                 raceResult: getMockRaceOfRace(driver: driver)),
        ]
        races.append(contentsOf: getMockFutureRaces())
        return races
    }
    static func getDrivers(logger: Logger) async -> [DriverJson] {
        do {
            guard let url = URL(string: "https://ergast.com/api/f1/2023/drivers.json") else {
                logger.log("URL failed: getDrivers")
                return []
            }
            let request = URLRequest(url: url)
            let (data, _ ) = try await URLSession.shared.data(for: request)
            return try JSONDecoder().decode(MRData2.self, from: data).MRData.driverTable.drivers
        } catch {
            logger.log("getDriver failed: \(error)")
        }
        logger.log("Error occured in getDriver")
        return []
    }
    static func getConstructors(logger: Logger) async -> [ConstructorJson] {
        do {
            guard let url = URL(string: "https://ergast.com/api/f1/2023/constructors.json") else {
                logger.log("URL failed in getConstructors")
                return []
            }
            let request = URLRequest(url: url)
            let (data, _ ) = try await URLSession.shared.data(for: request)
            return try JSONDecoder().decode(MRData.self, from: data).MRData.constructorTable.constructors
        } catch {
            logger.log("Error occured in getConstructor: \(error)")
        }
        logger.log("Error occured in getConstructor")
        return []
    }
    static func getDriversConstructors(logger: Logger) async -> ([DriverJson], [ConstructorJson]) {
        logger.log("getDriversConstructors: First Task: getConstructor")
        async let constructors: [ConstructorJson] = getConstructors(logger: logger)
        logger.log("getDriversConstructors: First Task: getDrivers")
        async let drivers: [DriverJson] = getDrivers(logger: logger)
        logger.log("getDriversConstructors: Returns drivers and Constructors")
        return await (drivers, constructors)
    }
}
