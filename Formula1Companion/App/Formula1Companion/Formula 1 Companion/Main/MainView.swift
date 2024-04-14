//
//  MainView.swift
//  Formula 1 Companion
//
//  Created by Caner on 17.04.23.
//

import Foundation
import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MainMenu()
                .tabItem {
                    Label("Main Menu", systemImage: "house")
                }
            AllRacesScreen()
                .tabItem {
                    Label("Grand Prix", systemImage: "flag.and.flag.filled.crossed")
                }
            AllDriversConstructorsScreen()
                .tabItem {
                    Label("Drivers + Constructors", systemImage: "figure.run")
                }
        }
    }
}
