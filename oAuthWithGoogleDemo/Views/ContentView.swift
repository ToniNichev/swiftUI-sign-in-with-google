//
//  ContentView.swift
//  oAuthWithGoogleDemo
//
//  Created by Toni Nichev on 12/21/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            let user = UserModel()
            HStack {
                Text("name:")
                Text(user.givenName)
            }
            LoginPage()
        }
    }
}

#Preview {
    ContentView()
}
