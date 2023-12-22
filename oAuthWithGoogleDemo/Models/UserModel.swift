//
//  UserModel.swift
//  oAuthWithGoogleDemo
//
//  Created by Toni Nichev on 12/21/23.
//

import SwiftUI
import GoogleSignIn

class UserModel: ObservableObject {
    
    @Published var givenName = ""
    
    func checkStatus() {
        if GIDSignIn.sharedInstance.currentUser != nil {
            let user = GIDSignIn.sharedInstance.currentUser
            guard let user = user else { return }
            givenName = user.profile?.givenName ?? ""
        }
    }
}
