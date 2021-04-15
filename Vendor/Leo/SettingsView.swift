//
//  Home.swift
//  Apple_Signin (iOS)
//
//  Created by Balaji on 19/02/21.
//

import SwiftUI
import Firebase

struct SettingsView: View {
    
    @AppStorage("log_status") var log_Status = false
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        NavigationView{
            
            ZStack(alignment: .topLeading){
                
                Color("UseBlack")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading){
                    
                    Button(action: { presentation.wrappedValue.dismiss() }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    .padding(.leading)
                    .padding(.top)
                    
                    
                    
                    Button(action: {
                        // Logging Out User...
                        DispatchQueue.global(qos: .background).async {
                            
                            try? Auth.auth().signOut()
                        }
                        
                        // Setting Back View To Login...
                        withAnimation(.easeInOut){
                            log_Status = false
                        }
                        
                    }, label: {
                        
                        Text("Log Out")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,12)
                            .frame(width: UIScreen.main.bounds.width / 2)
                            .background(Color("UseMainRed"))
                            .clipShape(Capsule())
                    })
                    .offset(x: UIScreen.main.bounds.width / 4,
                            y: UIScreen.main.bounds.height / 2.75)
                }
                .navigationTitle("Settings")
                .navigationBarHidden(true)
            }
        }
        .navigationTitle("Settings")
        .navigationBarHidden(true)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
