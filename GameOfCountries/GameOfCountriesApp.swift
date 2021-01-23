//
//  GameOfCountriesApp.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 23/01/2021.
//

import SwiftUI

@main
struct GameOfCountriesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
