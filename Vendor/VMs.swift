//
//  VMs.swift
//  Vendor
//
//  Created by leo on 2/19/21.
//

import Foundation

class VMs: ObservableObject {
    let machines: [VM]
    
    init() {
        let url = Bundle.main.url(forResource: "VMs", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        machines = try! JSONDecoder().decode([VM].self, from: data)
    }
}
