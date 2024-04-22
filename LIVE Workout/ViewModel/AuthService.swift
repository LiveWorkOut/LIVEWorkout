//
//  AuthService.swift
//  LIVE Workout
//
//  Created by Abraham Estrada on 4/21/24.
//

import Foundation
import ParseSwift

struct AuthService {
    
    func signup(email: String, username: String, password: String) {
        var newUser = User()
        newUser.username = username
        newUser.email = email
        newUser.password = password

        newUser.signup { result in

            switch result {
            case .success(let user):

                print("✅ Successfully signed up user \(user)")

                // Post a notification that the user has successfully signed up.
                NotificationCenter.default.post(name: Notification.Name("login"), object: nil)

            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func login(username: String, password: String) {
        var newUser = User()
        newUser.username = username
        newUser.password = password

        User.login(username: username, password: password) { result in

            switch result {
            case .success(let user):
                print("✅ Successfully logged in as user: \(user)")

                // Post a notification that the user has successfully logged in.
                NotificationCenter.default.post(name: Notification.Name("login"), object: nil)

            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
