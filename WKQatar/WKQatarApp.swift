//
//  WKQatarApp.swift
//  WKQatar
//
//  Created by Florian Degraeve on 15/10/2025.
//

import SwiftUI

@main
struct WKQatarApp: App {
    @Environment(DataStore.self) var datastore  = DataStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
