//
//  CardDetailView.swift
//  Cards
//
//  Created by ARobbins on 2/23/23.
//

import SwiftUI

struct CardDetailView: View {
    @EnvironmentObject var viewState: ViewState
    @State private var currentModal: CardModal?
    
    var body: some View {
        Color.yellow
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) { Button("Done") {
                        viewState.showAllCards.toggle()
                        }
                    }
                ToolbarItem(placement: .bottomBar) {
                    CardBottomToolbar(cardModal: $currentModal)
                }
            }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
            .environmentObject(ViewState())
    }
}
