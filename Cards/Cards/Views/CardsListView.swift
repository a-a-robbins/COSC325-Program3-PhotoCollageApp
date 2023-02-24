//
//  CardsListView.swift
//  Cards
//
//  Created by ARobbins on 2/23/23.
//

import SwiftUI

struct CardsListView: View {
    @EnvironmentObject var ViewState: ViewState
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(0..<10) {_ in
                    CardThumbnailView()
                        .onTapGesture {
                            ViewState.showAllCards.toggle()
                        }
                }
            }
        }
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
            .environmentObject(ViewState())
    }
}
