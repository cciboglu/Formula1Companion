//
//  FromJson.swift
//  Formula 1 Companion
//
//  Created by Caner on 16.04.23.
//

import Foundation
import SwiftUI

struct DriverJson: Codable {
    var familyName: String
    var givenName: String
    var nationality: String
    var permanentNumber: String
    var dateOfBirth: String
}

struct ConstructorJson: Codable {
    var constructorId: String
    var name: String
    var nationality: String
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.constructorId = try container.decode(String.self, forKey: .constructorId)
        self.name = try container.decode(String.self, forKey: .name)
        self.nationality = try container.decode(String.self, forKey: .nationality)
    }
}

struct MRDataDriverTable: Codable {
    var driverTable: DriverTable
    enum CodingKeys: String, CodingKey {
        case driverTable = "DriverTable"
    }
}

struct MRData2: Codable {
    var MRData: MRDataDriverTable
}

struct MRData: Codable {
    var MRData: MRDataConstructorTable
}

struct MRDataConstructorTable: Codable {
    var constructorTable: ConstructorTable
    enum CodingKeys: String, CodingKey {
        case constructorTable = "ConstructorTable"
    }
}
struct DriverTable: Codable {
    let drivers: [DriverJson]
    enum CodingKeys: String, CodingKey {
        case drivers = "Drivers"
    }
}

struct ConstructorTable: Codable {
    let constructors: [ConstructorJson]
    enum CodingKeys: String, CodingKey {
        case constructors = "Constructors"
    }
}
