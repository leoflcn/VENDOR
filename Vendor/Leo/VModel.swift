//
//  Model.swift
//  Vendor
//
//  Created by leo on 3/22/21.
//

import Foundation
import SwiftUI

class VModel: NSObject, ObservableObject{

    @Published var cartItems : [Cart] = []
    @Published var ordered = false


}

