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
    
    var title: String {
        switch self {
        case .button3D:
            return "3D Button"
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .button3D:
            Button3D()
        }
    }
}

extension Item: Identifiable {
    var id: String { rawValue }
}
