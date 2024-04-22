//
//  LoginRegisterView.swift
//  LIVE Workout
//
//  Created by Abraham Estrada on 4/20/24.
//

import SwiftUI

struct LoginRegisterView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showProfileScreenActive = false;
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("LIVE Workout")
                    .font(.largeTitle)
                
                VStack {
                    Text("Username")
                    TextField("Type username here...", text: $email)
                        .padding()
                    Text("Password")
                    SecureField("Type password here...", text: $password)
                        .padding()
                }
                .padding()
                
                HStack {
                    Button("Sign Up") {
                        // TODO: Sign up user
                        
                    }
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    Button("Login") {
                        // TODO: Login user
                        showProfileScreenActive = true
                    }
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                }
                .navigationDestination(isPresented: $showProfileScreenActive, destination: {
                    ContentView()
                })
            }
        }
    }
}

#Preview {
    LoginRegisterView()
}
