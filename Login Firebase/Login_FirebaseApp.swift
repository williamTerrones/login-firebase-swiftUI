//
//  Login_FirebaseApp.swift
//  Login Firebase
//
//  Created by William Terrones on 24/12/20.
//

import SwiftUI
import Firebase

@main
struct Login_FirebaseApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
