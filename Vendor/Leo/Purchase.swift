//
//  Cart.swift
//  Vendor
//
//  Created by leo on 3/22/21.
//

import Foundation
import SwiftUI

class Purchase: NSObject, ObservableObject {
    
    @Published var item: Item = Item(id: 1, name: "pooo", price: 3, description: "poo", quantity: 5)
    
    func Choose(item: Item) {
        
        self.item = item
        
    }
    
}
