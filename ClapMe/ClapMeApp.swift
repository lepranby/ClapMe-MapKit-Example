//
//  ClapMeApp.swift
//  ClapMe
//
//  Created by Aleksej Shapran on 29.03.23.
//

import SwiftUI

@main
struct ClapMeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
