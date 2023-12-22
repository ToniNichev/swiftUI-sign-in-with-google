//
//  ContentView.swift
//  oAuthWithGoogleDemo
//
//  Created by Toni Nichev on 12/21/23.
//

import SwiftUI
import GoogleSignIn

struct ContentView: View {
    @State var user = UserModel()
    
    var body: some View {
        VStack {
            if user.givenName == "" {
                LoginPage()
            } else {
                HStack {
                    Text("name:")
                    Text(user.givenName)
                    
                    user.showLogOutButton()
                }
                MainAppView()
            }

        }
    }
}

#Preview {
    ContentView()
}
