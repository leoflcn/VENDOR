//
//  SignupView.swift
//  Vendor
//
//  Created by Rushil Mistry on 2/20/21.
//

import SwiftUI


struct SignupView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmpassword: String = ""
    var body: some View {
        ZStack {
            Color("UseBlack")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                HStack {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .font(.system(size: 38, weight: .bold, design: .default))
                    .padding(.top, 20)
                    .padding(.bottom, 80)
                    .frame(width: 340, height: nil, alignment: .leading)
                 
                    NavigationLink(destination: WelcomeScreen(), label: {Image(systemName: "questionmark.circle.fill")})
                        .font(.system(size: 30))
                        .foregroundColor(Color("Dark Red"))
                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 0, y: -30)
                    
                    
                }
                    

                //Name box
                HStack {
                    TextField("Name", text: $name)
                }.frame(height: 35)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(6)
                .padding(.horizontal, 20)
                .foregroundColor(Color("Dark Red"))
                .padding(.bottom, 50)

                //Email Box
                HStack {
                    TextField("Email", text: $email)
                }.frame(height: 35)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(6)
                .padding(.horizontal, 20)
                .foregroundColor(Color("Dark Red"))
                .padding(.bottom, 50)
                

                //Password Box
                HStack {
                    SecureField("Password", text: $password)
                }.frame(height: 35)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(6)
                .padding(.horizontal, 20)
                .foregroundColor(Color("Dark Red"))
                .padding(.bottom, 50)
                
                
                //Confirm Password Box
                HStack {
                    SecureField("Confirm Password", text: $confirmpassword)
                }.frame(height: 35)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(6)
                .padding(.horizontal, 20)
                .foregroundColor(Color("Dark Red"))
                .padding(.bottom, 15)
                
                
                //Bottom Print
                Text("By clicking Sign Up, you agree to our Terms of Services and that you have to read out Privacy Policy")
                    .foregroundColor(.white)
                    .font(.system(size: 10, weight: .light, design: .default))
                    .padding(.horizontal, 20)
                
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
                    .padding(.bottom, 50)
                }
            }
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
