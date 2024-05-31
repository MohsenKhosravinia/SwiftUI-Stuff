//
//  Color+Random.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

public extension Color {
    static var random: Self {
        Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}
