//
//  DriverinfoScreen.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import SwiftUI

@MainActor
struct DriverinfoScreen: View {
    var driver: Driver
    var body: some View {
        NavigationStack {
            VStack {
                TextDesign.headline(text: "Driver")
                List {
                    getDriverNumer(string: driver.number)
                    VStack(alignment: .center) {
                        Image("f1Logo") .frame(width: 100, height: 100)
                        HStack(alignment: .center) {
                            Text(driver.firstName).bold()
                            Text(driver.name).bold()
                        }.font(Font.system(size: 30))
                        Divider()
                        HStack {
                            Image(systemName: "birthday.cake")
                            Text(driver.birthday)
                        }.font(Font.system(size: 20)).padding(10)
                        HStack {
                            Image(systemName: "flag")
                            Text(driver.nationality)
                        }.font(Font.system(size: 20))
                    }.frame(width: 400, height: 350)
                    Section {
                        Text("Constructor").bold().font(Font.system(size: 30))
                        VStack {
                            NavigationLink(destination: ConstructorInfoScreen(constructor: driver.constructor)) {
                                Text(driver.constructor.name).font(Font.system(size: 20))
                            }
                        }.frame(height: 80)
                    }
                }
            }
        }
    }
    func getDriverNumer(string: String) -> some View {
        return Section {
            Text(String(driver.number))
                .font(Font.system(size: 50))
                .foregroundColor(Color.red)
                .italic()
                .bold()
                .background(Circle()
                .fill(Color.white)
                .shadow(radius: 3)
                .frame(width: 100, height: 100))
        }
    }
}
struct DriverinfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        DriverinfoScreen(driver: Driver(
            name: "Hamilton",
            firstName: "Lewis",
            nationality: "german",
            number: "1",
            birthday: "13.11.1937",
            constructor: Constructor(id: "", name: "sdfjkhsadflk;", nationality: "", drivers: [
                Driver(
                    name: "Leclerc",
                    firstName: "Charles",
                    nationality: "german",
                    number: "1",
                    birthday: "",
                    constructor: Constructor(id: "", name: "", nationality: "", drivers: [])
                ),
                Driver(
                    name: "Verstappen",
                    firstName: "Lewis",
                    nationality: "german",
                    number: "1",
                    birthday: "",
                    constructor: Constructor(id: "", name: "", nationality: "", drivers: [])
                )
            ])
        ))
    }
}
