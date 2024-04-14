//
//  AllDriversConstructorsScreen.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import SwiftUI

@MainActor
struct AllDriversConstructorsScreen: View {
    @StateObject var viewModel = AllDriversConstructorsViewModel()

    var body: some View {
        ZStack {
            if viewModel.loadingProgress {
                ProgressView()
            }
            NavigationStack {
                VStack {
                    TextDesign.headline(text: "Drivers + Constructors")
                    getRightCards()
                }
            }.task {
                await viewModel.loadContent()
            }
        }
    }

    private func getRightCards() -> some View {
        var driverTmp: [Driver] = []
        var constructorTmp: [Constructor] = []
        for driver in viewModel.drivers ?? [] {
            if(driver.name.uppercased()
                .contains(viewModel.typedText
                .uppercased()) || driver.firstName.uppercased().contains(viewModel.typedText.uppercased()) ||
                viewModel.typedText.uppercased()
                .contains(driver.firstName.uppercased()) || viewModel.typedText.uppercased().contains(driver.name
                    .uppercased())) || viewModel.typedText.isEmpty {
                driverTmp.append(driver)
            }
        }
        for constructor in viewModel.constructors ?? [] {
            if (constructor.name.uppercased().contains(viewModel.typedText.uppercased()) || viewModel
                .typedText.uppercased()
                .contains(constructor.name.uppercased()))
                || viewModel.typedText.isEmpty {
                constructorTmp.append(constructor)
            }
        }
        return List {
            TextField("Search for Constructors or Drivers", text: $viewModel.typedText)
            Section("Drivers") {
                ForEach(driverTmp, id: \.name) { driver in
                    NavigationLink(destination: DriverinfoScreen(driver: driver), label: {
                        HStack {
                            Text("\(driver.firstName) \(driver.name)")
                        }
                        }
                    )
                }
            }
            Section("Constructors") {
                ForEach(constructorTmp, id: \.name) { constructor in
                    NavigationLink(destination: ConstructorInfoScreen(constructor: constructor)) {
                        Text(constructor.name)
                    }
                }
            }
        }.listStyle(.sidebar)
    }
}
struct AllDriversConstructorsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AllDriversConstructorsScreen()
    }
}
