//
//  ContentView.swift
//  Vendor
//
//  Created by Rushil Mistry on 1/28/21.
//

import SwiftUI

struct WelcomeScreen: View {
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
                        Text("Start to Discover")
                            .font(.system(size: 32, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Text("Start finding your place right now")
                            .font(.system(size: 20, weight: .light, design: .default))
                            .foregroundColor(.white)
                    
                    }
                    
                    Spacer()
                    
                    Button(action: {
                                    print("It Works")
                                }) {
                                    HStack() {
                                        Text("Log In Now")
                                            .fontWeight(.semibold)
                                            .font(.title)
                                    }
                                    .padding()
                                    .frame(width: 390, height: 55, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(Color("UseMainRed"))
                                    .cornerRadius(40)
                                }
                    
                    Spacer()
                    
                    HStack {
                        Text("Don's have an account?")
                            .font(.system(size: 15, weight: .light, design: .default))
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: Text("Registraion Page"), label: { Text("Register")})
                            .foregroundColor(Color("Dark Red"))
                
                    }
                        
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeScreen()
        }
    }
}
}
