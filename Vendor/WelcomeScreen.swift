//
//  ContentView.swift
//  Vendor
//
//  Created by Rushil Mistry on 1/28/21.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack{
        Image("welcomescreenbackground")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("Start to Discover")
                    .foregroundColor(Color.white)

                Text("Start fiding your place right now")
                    .foregroundColor(Color.white)

                ZStack{
                    Button("Click Me", action: {
                        
                        print("Hello World")
                        
                    })
                    Image("welcomelogin")
                        .resizable()
                        .scaledToFit()
                    
                }
                HStack{
                    Text("Don't have an account?")
                        .foregroundColor(Color.white)
                        .font(.system(size:12))
                    
                    Button("Register", action: {
                            
                        print("Hello World")
                            
                    })
                        .foregroundColor(Color.red)
                        .font(.system(size:12))
                    
                }
                Spacer()
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
