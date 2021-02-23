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
    }
}

struct VendorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VendorView(VM: VM.example)
        }
    }
}
