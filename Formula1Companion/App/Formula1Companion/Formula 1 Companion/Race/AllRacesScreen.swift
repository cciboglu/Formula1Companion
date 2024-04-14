//
//  AllRacesScreen.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import SwiftUI

@MainActor
struct AllRacesScreen: View {
    @StateObject var viewModel = AllRacesViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                TextDesign.headline(text: "All races")
                Picker("Races", selection: $viewModel.picker) {
                    Text("All races").tag(0)
                    Text("Past races").tag(1)
                    Text("Next races").tag(2)
                }.pickerStyle(.segmented)
                getRightElements()
            }
        }
    }
    func getRightElements() -> some View {
        var tmpRaces: [Race] = []
        if viewModel.picker == 0 {
            tmpRaces = viewModel.races
        } else if viewModel.picker == 1 {
            for race in viewModel.races {
                let isoDate = race.date + race.time
                let dateFormatter = ISO8601DateFormatter()
                let date = dateFormatter.date(from: isoDate) ?? Date.now
                if date < Date.now {
                    tmpRaces.append(race)
                }
            }
        } else {
            for race in viewModel.races {
                let isoDate = race.date + race.time
                let dateFormatter = ISO8601DateFormatter()
                let date = dateFormatter.date(from: isoDate) ?? Date.now
                if date >= Date.now {
                    tmpRaces.append(race)
                }
            }
        }
        return List {
            ForEach(tmpRaces, id: \.raceName) { race in
                Section {
                    NavigationLink(destination: RaceResultScreen(race: race), label: {
                        VStack {
                            Text(race.date)
                            Text(race.raceName)
                            HStack {
                                Text(race.location)
                                Text(race.country)
                            }
                        }
                    }
                    )
                }
            }
        }
    }
}
struct AllRacesScreen_Previews: PreviewProvider {
    static var previews: some View {
        AllRacesScreen()
    }
}
