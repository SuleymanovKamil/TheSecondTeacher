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
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .onChange(of: scenePhase) { _ in
                    if scenePhase == .active {
                        appLaunches += 1
                        print("appLaunches = ", appLaunches)
                    }
                }
        }
    }
}
