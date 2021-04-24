import SwiftUI
import UIKit
import PassKit

struct PaymentButton: View {
    let paymentHandler = PaymentHandler() //As defined by Taif
    let VM : VM
    let item : Item
    @ObservedObject var VModel = VMs()
    @State private var isShowing = false
    
    
    var body: some View {
        NavigationLink(destination: ReceiptView(VM: VM, item: item), isActive: $isShowing) { EmptyView() }
        Button(action: {
            // Using the code from Tarif!
            self.paymentHandler.startPayment(item: item) { success in
                if success {
                    VModel.updateDocumentArray(VM: VM, item: item)
                    self.isShowing = true
                } else {
                    print("Failed")
                }
            }
        }, label: { EmptyView() } )
            .buttonStyle(PaymentButtonStyle())
    }
}


struct PaymentButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return PaymentButtonHelper()
    }
}
    
struct PaymentButtonHelper: View {
    var body: some View {
        PaymentButtonRepresentable()
            .frame(minWidth: 100, maxWidth: 400)
            .frame(height: 60)
            .frame(maxWidth: .infinity)
    }
}

extension PaymentButtonHelper {
    struct PaymentButtonRepresentable: UIViewRepresentable {
    
    var button: PKPaymentButton {
        let button = PKPaymentButton(paymentButtonType: .buy, paymentButtonStyle: .black) /*customize here*/
        button.cornerRadius = 4.0 /* also customize here */
        return button
    }
     
    func makeUIView(context: Context) -> PKPaymentButton {
        return button
    }
    func updateUIView(_ uiView: PKPaymentButton, context: Context) { }
}
}
