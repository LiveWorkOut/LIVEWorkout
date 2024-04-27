//
//  HomeView.swift
//  LIVE Workout
//
//  Created by Abraham Estrada on 4/26/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    @State private var showNewWorkoutView = false;
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    SearchBar(text: $searchText)
                        .padding()
                    Button("New") {
                        // TODO: New workout
                        showNewWorkoutView = true
                    }
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                }
                .padding(5)
                .navigationDestination(isPresented: $showNewWorkoutView, destination: {
                    WorkoutEditView()
                })
                ScrollView {
                    SchedulePostView(header: "Cycling Workout Indoors", bodyText: "Use the indoor bicycle workout tool to do 60 minutes of intense workout.", caption: "Created by Arnold.")
                    SchedulePostView(header: "Weight lifting", bodyText: "Do 5 sets of atleast 10 reps. This shiuld be a duration of 60 minutes", caption: "Created by Arnold.")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
