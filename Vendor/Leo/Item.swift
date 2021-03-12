//
//  File.swift
//  Vendor
//
//  Created by leo on 3/12/21.
//

import Foundation

struct Item: Decodable, Identifiable {

    var id = UUID()
    let name: String
    let price: Double
    let description: String
    let image: String
    
}
