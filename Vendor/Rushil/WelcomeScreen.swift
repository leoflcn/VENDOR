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
                            .frame(width: 500, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: -75, y: 0)
                        
                        
                        
                        Text("Start finding your place right now")
                            .font(.system(size: 20, weight: .light, design: .default))
                            .foregroundColor(.white)
                            .frame(width: 500, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: -50, y: 0)
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: VendorMap()
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                            .navigationViewStyle(StackNavigationViewStyle())){
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
                        Text("Don't have an account?")
                            .font(.system(size: 15, weight: .light, design: .default))
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: SignupView(), label: { Text("Register")})
                            .foregroundColor(Color("Dark Red"))
                        
                    }
                    
                }
            }
            .navigationBarTitle("Welcome")
            .navigationBarHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}
struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeScreen()
        }
    }
}


