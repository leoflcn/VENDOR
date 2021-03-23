//
//  Cart.swift
//  Vendor
//
//  Created by leo on 3/22/21.
//

import Foundation
import SwiftUI

struct Cart: Identifiable {
    
    var id = UUID().uuidString
    var item: Item
    var quantity: Int
    
}
