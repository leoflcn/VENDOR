////
////  PaymentView.swift
////  Vendor
////
////  Created by Rushil Mistry on 3/2/21.
////
//
import SwiftUI
import iPaymentButton

struct PaymentView: View {
    var body: some View {
        ZStack{
            Color("UseBlack")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Cart")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .font(.headline)
                Spacer()
                iPaymentButton {
                    iPaymentButton.applePayDemo()
                }
                .padding()
            }
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}

