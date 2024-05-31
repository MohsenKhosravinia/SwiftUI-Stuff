//
//  PistolView.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

struct PistolView: View {
    private let animationProgress: CGFloat
    private let delay: CGFloat
    private let pistolHeight: CGFloat = 100
    
    private var height: CGFloat {
        max(pistolHeight * animationProgress, 50)
    }
    
    private var offsetY: CGFloat {
        height / 2
    }
    
    init(animationProgress: CGFloat, delay: TimeInterval) {
        self.animationProgress = animationProgress
        self.delay = delay
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(
                Color.red.gradient
            )
            .frame(height: height)
            .animation(
                .easeInOut(duration: 0.7).repeatForever().delay(delay),
                value: animationProgress
            )
            .rotationEffect(Angle(degrees: 180), anchor: .top)
            .offset(y: height)
            .debug()
    }
}
