//
//  Equalizer.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import Foundation
import SwiftUI

struct EqualizerView: View {
    @State private var animationProgress: CGFloat = .zero
    
    var body: some View {
        PistolStack(animationProgress: animationProgress)
            .alignToCenter()
            .onAppear {
                animationProgress = 1.0
            }
            .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    EqualizerView()
}
