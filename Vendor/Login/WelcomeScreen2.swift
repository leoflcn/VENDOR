//
//  ContentView.swift
//  Vendor
//
//  Created by Rushil Mistry on 1/28/21.
//

import SwiftUI
import AuthenticationServices

struct WelcomeScreen2: View {
    
    @StateObject var loginData = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ZStack{
                Color("UseBlack")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Image("Vending Machine")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 1) {
                        Text("Vendor")
                            .font(.system(size: 35, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .frame(width: 500, height: 35, alignment: .leading)
                            .offset(x: 60, y: 2)
                            
                        
                        
                        Text("Any snack, anywhere.")
                            .font(.system(size: 25, weight: .light, design: .default))
                            .foregroundColor(.white)
                            .frame(width: 500, height: 35, alignment: .leading)
                            .offset(x: 60, y: 0)
                        
                    }
                    
                    Spacer()
                    
                    SignInWithAppleButton { (request) in
                        
                        // requesting paramertes from apple login...
                        loginData.nonce = randomNonceString()
                        request.requestedScopes = [.email,.fullName]
                        request.nonce = sha256(loginData.nonce)
                        
                    } onCompletion: { (result) in
                        
                        // getting error or success...
                        
                        switch result{
                        case .success(let user):
                            print("success")
                            // do Login With Firebase...
                            guard let credential = user.credential as? ASAuthorizationAppleIDCredential else{
                                print("error with firebase")
                                return
                            }
                            loginData.authenticate(credential: credential)
                        case.failure(let error):
                            print(error.localizedDescription)
                        }
                    }
                    .signInWithAppleButtonStyle(.white)
                    .frame(height: 55)
                    .clipShape(Capsule())
                    .padding(.horizontal,60)
                    .offset(y: -62)
                
                }
            }
        }
    }
}
struct WelcomeScreen2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeScreen2()
        }
    }
}


