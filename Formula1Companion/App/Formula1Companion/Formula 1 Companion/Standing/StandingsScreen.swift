//
//  StandingsScreen.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import SwiftUI

@MainActor
struct StandingsScreen: View {
    @StateObject var standingsScreenViewModel = StandingsScreenViewModel()
    var body: some View {
        VStack {
            TextDesign.headline(text: "Standings")
            List {
                Section {
                    Text("Drivers").bold().font(Font.system(size: 20))
                    ForEach(standingsScreenViewModel.standingsDrivers.standings, id: \.driver.name) { standing in
                        HStack {
                            Text("\(standing.number)")
                            Text(standing.driver.name)
                            Text("Wins: \(standing.wins)")
                            Text("\(standing.points) pts")
                        }
                    }
                }
                Section {
                    Text("Constructors").bold().font(Font.system(size: 20))
                    ForEach(standingsScreenViewModel
                        .standingsConstructor.standings, id: \.constructor.name) { standing in
                        HStack {
                            Text("\(standing.number)")
                            Text(standing.constructor.name)
                            Text("Wins: \(standing.wins)")
                            Text("\(standing.points) pts")
                        }
                    }
                }
            }
        }
    }
}

struct StandingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        StandingsScreen()
    }
}
