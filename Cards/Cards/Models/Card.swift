//
//  Card.swift
//  Cards
//
//  Created by ARobbins on 2/27/23.
//

import Foundation
import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    var backgroundColor: Color = .yellow
    var elements: [CardElement] = []
}
