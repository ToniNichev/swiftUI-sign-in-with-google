//
//  UserModel.swift
//  oAuthWithGoogleDemo
//
//  Created by Toni Nichev on 12/21/23.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

final class UserModel: ObservableObject {
    
    @Published var email = ""
    @Published var givenName = ""
    @Published var isLoggedIn:Bool = false
    
    init() {
        getUserStatus()
    }

    func showLogInButton() -> some View {
        GoogleSignInButton(action: handleSignInButton)
    }
    
    func showLogOutButton() -> some View {
        Button ("Log out") {
            GIDSignIn.sharedInstance.signOut()
        }
    }
    
    func getUserStatus() {
        if GIDSignIn.sharedInstance.currentUser != nil {
            let user = GIDSignIn.sharedInstance.currentUser
            
            guard let user = user else { return }
            
            givenName = user.profile?.givenName ?? ""
            email = user.profile?.email ?? ""
            
            
        }
    }
    
    func handleSignInButton() {
        GIDSignIn.sharedInstance.signIn(withPresenting: getRootViewController()) { signInResult, error in
            guard let result = signInResult else {
                // Inspect error
                return
            }
            print("Sign in ...")
            print(result.user.profile?.givenName ?? "")
        }
    }
    
}
