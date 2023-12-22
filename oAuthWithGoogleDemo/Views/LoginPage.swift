//
//  LoginPage.swift
//  oAuthWithGoogleDemo
//
//  Created by Toni Nichev on 12/21/23.
//

import SwiftUI
import GoogleSignInSwift
import GoogleSignIn

struct LoginPage: View {
    var body: some View {
        
        
        VStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: getRect().height / 3)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.blue, lineWidth: 5)
                }
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            
            // Text
            VStack {
                Button {
                    
                } label: {
                    HStack(spacing: 15) {
                        Text("Welome to my demo app")
                    }
                }
                .padding(50)
                
                GoogleSignInButton(action: handleSignInButton)
            }
        }
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}

func getRootViewController() -> UIViewController {
    guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
        return .init()
    }
    guard let root = screen.windows.first?.rootViewController else {
        return .init()
    }
    
    return root
}

func handleSignInButton() {
    GIDSignIn.sharedInstance.signIn(withPresenting: getRootViewController()) { signInResult, error in
        guard let result = signInResult else {
            // Inspect error
            return
        }
        print(result)
    }
}

#Preview {
    LoginPage()
}
