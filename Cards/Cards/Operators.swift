//
//  Operators.swift
//  Cards
//
//  Created by ARobbins on 2/26/23.
//

import Foundation
import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize{
    CGSize(
        width: left.width + right.width,
        height: left.height + right.height)
}
