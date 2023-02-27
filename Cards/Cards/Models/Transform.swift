//
//  Transform.swift
//  Cards
//
//  Created by ARobbins on 2/26/23.
//

import Foundation
import SwiftUI

struct Transform {
    var size = CGSize(
        width: Settings.defaultElementSize.width,
        height: Settings.defaultElementSize.height)
    var rotation: Angle = .zero
    var offset: CGSize = .zero
}
