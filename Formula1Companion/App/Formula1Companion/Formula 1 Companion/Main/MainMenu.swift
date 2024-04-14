//
//  MainMenu.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import SwiftUI
import ACarousel

@MainActor
struct MainMenu: View {
    @StateObject var viewModel = MainMenuViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                Image("f1Logo")
                VStack {
                    TextDesign.headline(text: "Formula One Companion App")
                }.frame(height: 120)
                List {
                    ACarousel(viewModel.images) { image in
                        image.image.resizable().scaledToFit()
                    }.frame(height: 200)
                    sectionLastRace()
                    sectionStanding()
                }
            }
        }
    }
    
    func sectionLastRace() -> some View {
        return Section {
            NavigationLink(destination: RaceResultScreen(race: viewModel.lastRace)) {
                VStack(spacing: 10) {
                    Text("Last Race").font(Font.system(size: 25))
                    HStack {
                        Text("\(viewModel.lastRace.raceName)")
                        Text("\(viewModel.lastRace.location),\(viewModel.lastRace.country)")
                    }
                    HStack {
                        Text("1. \(viewModel.lastRace.raceResult[0].driver.firstName)")
                        Text(" \(viewModel.lastRace.raceResult[0].driver.name) ")
                        Text("\(viewModel.lastRace.raceResult[0].time)")
                    }
                    VStack {
                        Button("More Information") {
                        }
                    }.padding(10)
                }.frame(minHeight: 150)
            }
        }
    }
        
        func sectionStanding() -> some View {
            return Section {
                NavigationLink(destination: StandingsScreen()) {
                    VStack(spacing: 10) {
                        Text("Standings").font(Font.system(size: 25))
                        HStack {
                            ForEach((0..<3), id: \.self) {number in
                                VStack {
                                    Text(String(number + 1)).font(Font.system(size: 30))
                                    Text(viewModel.driverStandings
                                        .standings[number].driver.firstName).font(Font.system(size: 20))
                                    Text(viewModel.driverStandings
                                        .standings[number].driver.name).font(Font.system(size: 20))
                                    Text("\(viewModel.driverStandings.standings[number].points) pts")
                                }.frame(maxWidth: .infinity, maxHeight: 110, alignment: .top)
                            }
                        }
                        Divider()
                        VStack(alignment: .leading, spacing: 10) {
                            ForEach((3..<6), id: \.self) { number in
                                HStack(alignment: .top, spacing: 40) {
                                    Text(String(number + 1)).font(Font.system(size: 20))
                                    Text("\(viewModel.driverStandings.standings[number].driver.firstName)")
                                    Text("\(viewModel.driverStandings.standings[number].driver.name)")
                                    Text("\(viewModel.driverStandings.standings[number].points) pts")
                                }
                            }.padding(5)
                        }
                        Button("Show Standings") {
                        }
                    }
                }.frame(height: 350)
            }
        }
    }


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
