//
//  ColorExtensions.swift
//  Cards
//
//  Created by ARobbins on 2/27/23.
//

import Foundation
import SwiftUI

extension Color {
    static let colors: [Color] = [
        .green, .red, .blue, .gray, .yellow, .pink, .orange, .purple
    ]
    
    static func random() -> Color {
        colors.randomElement() ?? .black
    }
}
