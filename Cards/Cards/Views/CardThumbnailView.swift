//
//  CardThumbnailView.swift
//  Cards
//
//  Created by ARobbins on 2/23/23.
//

import SwiftUI

struct CardThumbnailView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.random())
            .frame(
                width: Settings.thumbnailSize.width,
                height: Settings.thumbnailSize.height)
    }
}
    

struct CardThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        CardThumbnailView()
    }
}
