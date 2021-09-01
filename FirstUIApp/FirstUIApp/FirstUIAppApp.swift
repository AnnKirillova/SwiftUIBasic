//
//  FirstUIAppApp.swift
//  FirstUIApp
//
//  Created by Ann on 20.08.2021.
//

import SwiftUI

@main
struct FirstUIAppApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
