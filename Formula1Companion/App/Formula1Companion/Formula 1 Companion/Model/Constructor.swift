//
//  Constructor.swift
//  Formula 1 Companion
//
//  Created by Caner on 12.04.23.
//

import Foundation

struct Constructor {
    var id: String
    var name: String
    var nationality: String
    var drivers: [Driver]
    init(id: String, name: String, nationality: String, drivers: [Driver]) {
        self.id = id
        self.name = name
        self.nationality = nationality
        self.drivers = drivers
    }
}
