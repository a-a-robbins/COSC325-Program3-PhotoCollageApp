//
//  CardsView.swift
//  Cards
//
//  Created by ARobbins on 2/23/23.
//

import SwiftUI

struct CardsView: View {
    @EnvironmentObject var viewState: ViewState
    @EnvironmentObject var store: CardStore
    
    var body: some View {
        ZStack {
            CardsListView()
            
            if !viewState.showAllCards {
                SingleCardView()
            }
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
            .environmentObject(ViewState())
            .environmentObject(CardStore(defaultData: true))
    }
}
