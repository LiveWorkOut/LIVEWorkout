//
//  RegisterView.swift
//  LIVE Workout
//
//  Created by Abraham Estrada on 4/21/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showProfileScreenActive = false;
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("LIVE Workout")
                    .font(.largeTitle)
                
                VStack {
                    Text("Email")
                    TextField("Type email here...", text: $email)
                        .padding()
                    Text("Username")
                    TextField("Type username here...", text: $username)
                        .padding()
                    Text("Password")
                    SecureField("Type password here...", text: $password)
                        .padding()
                }
                .padding()
                
                Button("Sign Up") {
                    // TODO: Sign up user
                    
                }
                .padding()
                .background(Color.gray)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .navigationDestination(isPresented: $showProfileScreenActive, destination: {
                    ContentView()
                })
            }
        }
    }
}

#Preview {
    RegisterView()
}

