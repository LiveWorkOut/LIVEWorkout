//
//  MainTabView.swift
//  LIVE Workout
//
//  Created by Abraham Estrada on 4/21/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            // First Tab
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            // Second Tab
            InstructorsView()
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
    MainTabView()
}
