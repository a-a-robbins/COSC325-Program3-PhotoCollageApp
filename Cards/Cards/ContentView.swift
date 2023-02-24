//
//  ContentView.swift
//  Cards
//
//  Created by ARobbins on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewState: ViewState
    
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
        CardsView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
            .environmentObject(ViewState())
    }
}
