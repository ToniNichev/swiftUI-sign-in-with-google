//
//  ContentView.swift
//  oAuthWithGoogleDemo
//
//  Created by Toni Nichev on 12/21/23.
//

import SwiftUI
import GoogleSignIn

struct ContentView: View {
    
    var body: some View {
        VStack {
            let user = UserModel()
            
            if user.givenName == "" {
                LoginPage()
            } else {
                HStack {
                    Text("name:")
                    Text(user.givenName)
                    Button ("Log out") {
                        GIDSignIn.sharedInstance.signOut()
                    }
                }
                MainAppView()
            }

        }
    }
}

#Preview {
    ContentView()
}
