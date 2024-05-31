//
//  Item.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import Foundation
import SwiftUI

enum Item: String, CaseIterable {
    case button3D
    case equalizerAnimation
    
    var title: String {
        switch self {
        case .button3D:
            return "3D Button"
        case .equalizerAnimation:
            return "Equalizer animation"
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .button3D:
            Button3D()
        case .equalizerAnimation:
            EmptyView()
        }
    }
}

extension Item: Identifiable {
    var id: String { rawValue }
}
