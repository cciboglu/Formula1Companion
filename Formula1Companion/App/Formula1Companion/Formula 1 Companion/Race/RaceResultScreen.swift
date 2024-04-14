//
//  RaceResultScreen.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import SwiftUI

@MainActor
struct RaceResultScreen: View {
    @StateObject var viewModel = RaceResultViewModel()
    var race: Race
    var body: some View {
        NavigationStack {
            VStack {
                TextDesign.headline(text: race.raceName)
                VStack {
                    HStack {
                        Text(race.country)
                        Text(race.location)
                    }.frame(width: 200, height: 60)
                    Section {
                        Picker("Races", selection: $viewModel.picker) {
                            Text("Qualifiying").tag(0)
                            Text("Race").tag(1)
                        }.pickerStyle(.segmented)
                        getTable()
                    }
                }
            }
        }
    }
    private func getTable() -> some View {
        let len: Int = (viewModel.picker == 0) ? race.qualifiyingResult.count - 1 : race.raceResult.count - 1
        if len == -1 {
            return AnyView(
                List {
                    Text("Race has not started")
                }
            )
        }
        if (viewModel.picker) == 0 {
            return AnyView(List {
                ForEach(0...race.qualifiyingResult.count - 1, id: \.self) { number in
                    Section {
                        getTableElement(
                            driver: race.qualifiyingResult[number].driver,
                            number: number,
                            info1: race.qualifiyingResult[number].qa1,
                            info2:race.qualifiyingResult[number].qa2,
                            info3: race.qualifiyingResult[number].qa3)
                    }
                }
            })
        } else {
            return AnyView(List {
                ForEach(0...race.raceResult.count - 1, id: \.self) { number in
                    Section {
                        getTableElement(
                            driver: race.raceResult[number].driver,
                            number: number,
                            info1: race.raceResult[number].time,
                            info2: race.raceResult[number].timeFastestLap,
                            info3: String(race.raceResult[number].fastestLap))
                    }
                }
            }
            )
        }
    }
    private func getTableElement(driver: Driver,
                                 number: Int,
                                 info1: String,
                                 info2: String,
                                 info3: String) -> some View {
        let logo1: String
        let logo2: String
        let logo3: String
        if viewModel.picker == 0 {
            logo1 = "1.circle"
            logo2 = "2.circle"
            logo3 = "3.circle"
        } else {
            logo1 = "star"
            logo2 = "timer"
            logo3 = "numbersign"
        }
        return AnyView(
            NavigationLink(destination: DriverinfoScreen(driver: driver)) {
                HStack {
                    Text(String(number + 1))
                    Text(driver.name)
                    VStack {
                        HStack {
                            Image(systemName: logo1)
                            Text(info1)
                        }
                        HStack {
                            Image(systemName: logo2)
                            Text(info2)
                        }
                        HStack {
                            Image(systemName: logo3)
                            Text(info3)
                        }
                    }
                    Spacer()
                }
            })
    }
}
struct RaceResultScreen_Previews: PreviewProvider {
    static var previews: some View {
    RaceResultScreen(race: Race(date: "",
                                time: "",
                                raceName: "",
                                location: "",
                                country: "",
                                qualifiyingResult: [],
                                raceResult: []))
    }
}
