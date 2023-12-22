//
//  MainAppView.swift
//  oAuthWithGoogleDemo
//
//  Created by Toni Nichev on 12/21/23.
//

import SwiftUI
import GoogleSignIn

struct MainAppView: View {
    var body: some View {
        Button ("Log out") {
            GIDSignIn.sharedInstance.signOut()
        }
        Text("Main view")
    }
}

#Preview {
    MainAppView()
}
