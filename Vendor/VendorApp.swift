//
//  VendorApp.swift
//  Vendor
//
//  Created by Rushil Mistry on 1/28/21.
//

import SwiftUI

@main
struct VendorApp: App {
    @StateObject var vms = VMs()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    WelcomeScreen()
                }
                .tabItem { Text("Log in") }
                
                NavigationView {
                    VendorMap()
                    .navigationBarTitle("Map")
                    .navigationBarHidden(true)
                }
                .tabItem { Text("Map") }
                
            }
            .environmentObject(vms)
        }
    }
}
