//
//  ContentView.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

struct MainView: View {
    var items = Item.allCases
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(item.title, destination: { item.destination } )
                }
            }
            .navigationTitle("Components")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    MainView()
}
