//
//  CardStore.swift
//  Cards
//
//  Created by ARobbins on 2/27/23.
//

import Foundation
import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    
    init(defaultData: Bool = false) {
        if defaultData {
            cards = initialCards
        }
    }
}
