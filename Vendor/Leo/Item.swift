//
//  File.swift
//  Vendor
//
//  Created by leo on 3/12/21.
//

import Foundation
import FirebaseFirestoreSwift
struct Item: Codable, Identifiable {

    let id: Int
    let name: String
    let price: Double
    let description: String
    var quantity: Int
    
}
