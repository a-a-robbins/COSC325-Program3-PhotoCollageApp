//
//  ResizableView.swift
//  Cards
//
//  Created by ARobbins on 2/26/23.
//

import SwiftUI

struct ResizableView: View {
    @State private var transform = Transform()
    @State private var previousOffset: CGSize = .zero
    @State private var previousRotation: Angle = .zero
    @State private var scale: CGFloat = 1.0
    
    private let content = RoundedRectangle(cornerRadius: 30.0)
    private let color = Color.red
    
    var body: some View {
        let scaleGesture = MagnificationGesture()
            .onChanged{ scale in
                self.scale = scale
            }
            .onEnded{ scale in
                transform.size.width *= scale
                transform.size.height *= scale
                self.scale = 1.0
            }
        let rotationGesture = RotationGesture()
            .onChanged{ rotation in
                transform.rotation += rotation - previousRotation
                previousRotation = rotation
            }
            .onEnded{ _ in
                previousRotation = .zero
            }
        let dragGesture = DragGesture()
            .onChanged{ value in
                transform.offset = value.translation + previousOffset
            }
            .onEnded{ _ in
                previousOffset = transform.offset
            }
        content
            .frame(
                width: transform.size.width,
                height: transform.size.height)
            .foregroundColor(color)
            .rotationEffect(transform.rotation)
            .scaleEffect(scale)
            .offset(transform.offset)
            .gesture(dragGesture)
            .gesture(SimultaneousGesture(rotationGesture, scaleGesture))
    }
}

struct ResizableView_Previews: PreviewProvider {
    static var previews: some View {
        ResizableView()
    }
}