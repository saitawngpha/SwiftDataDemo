//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Steve Pha on 13/04/2024.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
