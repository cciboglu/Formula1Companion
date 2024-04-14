//
//  TextDesign.swift
//  Formula 1 Companion
//
//  Created by Caner on 16.04.23.
//

import Foundation
import SwiftUI

struct TextDesign {
    static func headline(text: String) -> some View {
        return Text(text).font(.custom("Caveat-Bold", size: 35)).italic()
    }
}
