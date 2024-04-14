//
//  ConstructorInfoScreen.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import SwiftUI

@MainActor
struct ConstructorInfoScreen: View {
    var constructor: Constructor
    var body: some View {
        NavigationStack {
            VStack {
                TextDesign.headline(text: "Constructor")
                List {
                    VStack(alignment: .center) {
                        Image("f1Logo").frame(width: 100, height: 100)
                        Spacer()
                        Text(constructor.name).bold().font(Font.system(size: 30))
                    }
                    Section {
                        Text("Drivers").bold().font(Font.system(size: 30))
                        ForEach(constructor.drivers, id: \.name) { driver in
                            HStack {
                                NavigationLink(destination: DriverinfoScreen(driver: driver)) {
                                    Text("\(driver.firstName) \(driver.name)")
                                }
                            }.frame(height: 80)
                        }
                    }
                }
            }
        }
    }
}

struct ConstructorInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConstructorInfoScreen(constructor: Constructor(id: "", name: "", nationality: "", drivers: []))
    }
}
