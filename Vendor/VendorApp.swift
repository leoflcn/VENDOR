//
//  VendorApp.swift
//  Vendor
//
//  Created by Rushil Mistry on 1/28/21.
//

import SwiftUI
import Firebase

@main
struct FiretestApp: App {

    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
                WelcomeScreen()
        }
    }
}
