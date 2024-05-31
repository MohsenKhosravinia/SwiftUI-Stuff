//
//  Stack+Alignment.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

extension View {
    func alignToCenter() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
