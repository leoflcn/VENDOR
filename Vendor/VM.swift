//
//  VM.swift
//  Vendor
//
//  Created by leo on 2/19/21.
//

import Foundation

struct VM: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    
    static let example = VM(id: 1, name: "poop", type: "poopy", latitude: 1.0, longitude: 2.0)
}
