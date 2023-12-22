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
        
        NavigationView {
            NavigationLink(destination: SettingsView()) {
                Text("Settings")
            }
        }
        
        Text("Main view")
    }
}

#Preview {
    MainAppView()
}
