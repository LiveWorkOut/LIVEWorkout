//
//  ProfileView.swift
//  login view
//
//  Created by Abraham Estrada on 4/20/24.
//

import SwiftUI

struct ProfileView: View {
    
    
    var body: some View {
        VStack {
            VStack {
                Text("👨‍💼")
                    .font(.system(size: 70))
                Text("John Doe")
                    .font(.system(size: 52, weight: .bold))
                Text("Bio goes here...")
                    .font(.system(size: 24))
                Text("Followers: 0  Following: 1")
                    .font(.system(size: 18))
            }
            .padding()
            Text("Schedule:")
                .padding()
            // TODO: - Do a for each here for each of their workouts with a workout view
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                SchedulePostView(header: "Cycling", bodyText: "60 minutes", caption: "Created by Arnold.")
                SchedulePostView(header: "Dumbell", bodyText: "15 minutes", caption: "Created by Arnold.")
                SchedulePostView(header: "Leg", bodyText: "30 minutes", caption: "Created by Arnold.")
                SchedulePostView(header: "Back ", bodyText: "15 minutes", caption: "Created by Arnold.")
                SchedulePostView(header: "Abs ", bodyText: "15 minutes", caption: "Created by Arnold.")
                SchedulePostView(header: "Chest ", bodyText: "15 minutes", caption: "Created by Arnold.")
            }
            .padding(8)
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}
