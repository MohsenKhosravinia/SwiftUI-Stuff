//
//  MoneyApp.swift
//  SwiftUI-Stuff
//
//  Created by Mohsen Khosravinia on 5/31/24.
//

import SwiftUI

struct MoneyApp: View {
    @State private var randomNumber = 0
    @State private var showNumber = false

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("profile_picture")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 10)
                        
                        Spacer()
                        
                        Button(action: {
                            // Action for adding a new plan
                        }) {
                            HStack {
                                Text("Add new Plan")
                                Image(systemName: "plus")
                            }
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                    Text("Always be in touch")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding([.leading, .trailing, .top])
                    
                    ScrollView {
                        VStack(spacing: 16) {
                            PlanView(provider: "AT&T", location: "Mexico", data: "2GB / 60min", validity: "VALID FOR 24 DAYS", price: "$32,10", backgroundColor: Color.purple.opacity(0.2))
                            PlanView(provider: "Vivo", location: "Brazil", data: "5GB", validity: "VALID FOR 30 DAYS", price: "$15", backgroundColor: Color.blue.opacity(0.2))
                            PlanView(provider: "Vodafone", location: "France", data: "1GB", validity: "VALID FOR 12 DAYS", price: "$104,20", backgroundColor: Color.pink.opacity(0.2))
                        }
                        .padding()
                    }
                }}
                
        }
            .navigationBarHidden(true)
    }
}

struct PlanView: View {
    var provider: String
    var location: String
    var data: String
    var validity: String
    var price: String
    var backgroundColor: Color
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(provider)
                        .font(.headline)
                    Text(data)
                        .font(.subheadline)
                    Text(validity)
                        .font(.caption)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(location)
                        .font(.headline)
                    Text(price)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()
            .background(backgroundColor)
            .cornerRadius(15)
            .shadow(radius: 5)
        }
    }
}


struct BackgroundView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.blue)
            .padding(8)
            .ignoresSafeArea(edges: .all)
            .shadow(color: Color.brown.opacity(0.3), radius: 0.5)
            .background(Color.backgroundBeige)
    }
}

struct AvatarView: View {
    var body: some View {
        Image("avatar")
               .resizable()
               .aspectRatio(contentMode: .fill)
               .clipShape(Circle())
    }
}

#Preview {
    MoneyApp()
}

extension Color {
    static var backgroundBeige: Color {
        Color(red: 242/255.0, green: 238/255.0, blue: 232/255.0)
    }
}
