//
//  Button3D.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

struct Button3D: View {
    @State private var backgroundColor: Color
    @State private var isPressed = false
    private let dept: CGFloat = 12
    private let deptOpacity: CGFloat = 0.7
    private let height: CGFloat = 50
    private let cornerRadius: CGFloat = 12
    private var offset: CGFloat { isPressed ? dept / 2 : .zero }
    
    init(color: Color) {
        backgroundColor = color
    }
    
    init() {
        self.init(color: .red)
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(backgroundColor.opacity(deptOpacity))
                .frame(width: .infinity, height: height - dept / 2)
                .offset(y: dept)
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(backgroundColor)
                .frame(width: .infinity, height: height)
                .offset(y: offset)
            
            Text("BUTTON")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.white)
                .offset(y: offset)
        }
        .frame(width: .infinity, height: height)
        .onTapGesture {
            withAnimation(.easeOut(duration: 0.2)) {
                isPressed.toggle()
            }
        }
        .onLongPressGesture(minimumDuration: .infinity) {
        } onPressingChanged: { isPressed in
            withAnimation(.easeOut(duration: 0.2)) {
                self.isPressed = isPressed
            }
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    VStack {
        Button3D(color: .cyan)
        Color.clear.frame(height: 10)
        Button3D(color: .red)
    }
}
