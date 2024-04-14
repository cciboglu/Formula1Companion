//
//  ImageItem.swift
//  Formula 1 Companion
//
//  Created by Caner on 17.04.23.
//

import Foundation
import SwiftUI

struct ImageItem: Identifiable {
    let id = UUID()
    let image: Image
    init(image: Image) {
        self.image = image
    }
}
