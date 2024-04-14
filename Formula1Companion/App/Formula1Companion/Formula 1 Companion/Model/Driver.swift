//
//  Driver.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

struct Driver {
    var name: String
    var firstName: String
    var nationality: String
    var number: String
    var birthday: String
    var constructor: Constructor
    init(name: String,
         firstName: String,
         nationality: String,
         number: String,
         birthday: String,
         constructor: Constructor) {
        self.name = name
        self.firstName = firstName
        self.nationality = nationality
        self.number = number
        self.birthday = birthday
        self.constructor = constructor
    }
}
