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
            Color("UseBlack")
                .edgesIgnoringSafeArea(.all)
            
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
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(40)
        }
                //Text("Start to Discover")
                 //   .foregroundColor(Color.white)

                //Text("Start fiding your place right now")
                    //.foregroundColor(Color.white)
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
