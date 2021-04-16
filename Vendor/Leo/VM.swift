//
//  VM.swift
//  Vendor
//
//  Created by leo on 2/19/21.
//

import Foundation
import FirebaseFirestoreSwift
struct VM: Codable, Identifiable {
    
    @DocumentID var id: String? = UUID().uuidString
    let name: String
    let type: String
    let description: String
    let address: String
    let latitude: Double
    let longitude: Double
    let items: [Item]
    
    static let example = VM (id: "sd",
                             name: "UTSA",
                             type: "Food",
                             description: "This is the UTSA engineering building.",
                             address: "idk its at UTSA",
                             latitude: 29.5827,
                             longitude: -98.6189,
                             items: [Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12),
                                     Item(id: 1, name: "poo", price: 2, description: "hji", quantity: 12)]

    )
}

