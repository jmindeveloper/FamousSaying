//
//  FamousSayingApp.swift
//  FamousSaying
//
//  Created by J_Min on 2022/01/16.
//

import SwiftUI

@main
struct FamousSayingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
