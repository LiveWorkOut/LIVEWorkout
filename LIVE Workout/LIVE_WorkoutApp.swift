//
//  LIVE_WorkoutApp.swift
//  LIVE Workout
//
//  Created by Abraham Estrada on 4/21/24.
//

import SwiftUI
import ParseSwift

@main
struct LIVE_WorkoutApp: App {
    
    init() {
        ParseSwift.initialize(
            applicationId: "oBcNVMoleFG0uYm2RZT1RYqBVaCa5d4IRbiVdHPe",
            clientKey: "2YNxIaDvqJVADJ24AmCN5JBNrcSEdELFynKnLk5V",
            serverURL: URL(string: "https://parseapi.back4app.com")!
        )
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
