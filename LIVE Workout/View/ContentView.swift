//
//  ContentView.swift
//  LIVE Workout
//
//  Created by Abraham Estrada on 4/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // First Tab
            InstructorsView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            // Second Tab
            Text("Bookmarks View")
                .tabItem {
                    Label("Bookmarks", systemImage: "bookmark")
                }
            
            // Third Tab
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
