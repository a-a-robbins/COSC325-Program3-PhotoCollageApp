//
//  CardModal.swift
//  Cards
//
//  Created by ARobbins on 2/23/23.
//

import Foundation

enum CardModal: Identifiable {
    var id: Int {
        hashValue
    }
    case photoPicker, framePicker, stickerPicker, textPicker
}
