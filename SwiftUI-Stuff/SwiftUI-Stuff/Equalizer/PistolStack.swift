//
//  PistolStack.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

struct PistolStack: View {
    private let animationProgress: CGFloat
    @State private var scale: CGFloat = 0.5
    
    init(animationProgress: CGFloat) {
        self.animationProgress = animationProgress
    }
    
    var body: some View {
        HStack {
            ForEach(0..<3) { index in
                PistolView(
                    animationProgress: animationProgress,
                    delay: TimeInterval(index) * 0.3
                )
            }
        }
        .frame(width: 100)
    }
}

#Preview {
    PistolStack(animationProgress: 1)
}
