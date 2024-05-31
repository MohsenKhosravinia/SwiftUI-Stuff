//
//  View+Debug.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

extension View {
    func debug() -> some View {
        let color = Color.random
        
        return background {
            GeometryReader { proxy in
                color.mask {
                    HStack(spacing: 6) {
                        ForEach(0..<150) { _ in
                            Rectangle()
                                .frame(width: 1, height: proxy.size.height * 1.4)
                        }
                        .rotationEffect(Angle.degrees(35))
                    }
                }
                .background(Color.white)
            }
            .border(color)
        }
    }
}
