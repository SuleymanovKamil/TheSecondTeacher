//
//  QuranApp.swift
//  Quran
//
//  Created by Камиль  Сулейманов on 24.12.2020.
//

import SwiftUI

@main
struct QuranApp: App {
    @Environment(\.scenePhase) var scenePhase
    @AppStorage("appLaunches") var appLaunches = 0
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .onChange(of: scenePhase) { _ in
                    if scenePhase == .active {
                        appLaunches += 1
                    }
                }
        }
    }
}
