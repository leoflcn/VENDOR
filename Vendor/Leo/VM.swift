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
    let building: String
    let buildingDescription: String
    let address: String
    let latitude: Double
    let longitude: Double
    let items: [Item]
    
    static let example = VM (id: 1,
                             name: "UTSA",
                             type: "Food",
                             building: "engineeringbuilding50",
                             buildingDescription: "This is the UTSA engineering building.",
                             address: "idk its at UTSA",
                             latitude: 29.5827,
                             longitude: -98.6189,
                             items: [Item(id: 1, name: "poo", price: 2, description: "hji", image: "Food", isAdded: false),
                                     Item(id: 2, name: "poo", price: 2, description: "hji", image: "Food", isAdded: false),
                                     Item(id: 3, name: "poo", price: 2, description: "hji", image: "Food", isAdded: false)]

    )
}

