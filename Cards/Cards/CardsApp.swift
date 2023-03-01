//
//  CardsApp.swift
//  Cards
//
//  Created by ARobbins on 2/23/23.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var store = CardStore(defaultData: true)
    @StateObject var viewState = ViewState()
    
    var body: some Scene {
        WindowGroup {
          CardsView()
            .environmentObject(viewState)
            .environmentObject(store)
        }
      }
}
