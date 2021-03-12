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
    
  //  let itemNames: [String]
  //  let itemPrices: [Double]
  //  let itemDescriptions: [String]
 //   let itemImages: [String]
    
    static let example = VM (id: 1,
                             name: "UTSA",
                             type: "Food",
                             building: "engineeringbuilding50",
                             buildingDescription: "This is the UTSA engineering building.",
                             address: "idk its at UTSA",
                             latitude: 29.5827,
                             longitude: -98.6189,
                             items: [Item(name: "poo", price: 2, description: "hji", image: "Food")]
                            // itemNames: ["Chips", "Cookies", "Gum"],
                           //   itemPrices: [1, 3, 4],
                           //  itemDescriptions: ["Snack", "Snack", "Snack"],
                           //  itemImages: ["Food", "Food", "Food"]
    )
}

