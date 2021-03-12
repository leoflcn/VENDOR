//
//  VendorView.swift
//  Vendor
//
//  Created by leo on 2/19/21.
//

import SwiftUI

struct VendorView: View {
    let VM: VM
    
    var body: some View {
        Text(VM.name)
        Text(VM.type)
            .padding()
        VStack {
            ForEach(Array(zip(VM.itemNames, zip(VM.itemPrices, VM.itemImages))), id: \.0) { item in
                Image(item.1.1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 75)
                Text(item.0 + " $" + String(item.1.0))
            }
        }
    }
}

struct VendorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VendorView(VM: VM.example)
        }
    }
}
