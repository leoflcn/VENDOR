//
//  UserAccountView.swift
//  Vendor
//
//  Created by Rushil Mistry on 3/11/21.
//

import SwiftUI
import UIKit

struct UserAccountView: View {
    var body: some View {
        ZStack{
            Color("UseBlack")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Account Details")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Spacer()
                Text("Name")
                    .foregroundColor(.gray)
                    .font(.system(size: 18))
                Spacer()
                Text("Email")
                    .foregroundColor(.gray)
                    .font(.system(size: 18))
                
            }
        }
    }
}

struct UserAccountView_Previews: PreviewProvider {
    static var previews: some View {
        UserAccountView()
    }
}
