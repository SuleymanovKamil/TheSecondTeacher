//
//  ContentView.swift
//  Quran
//
//  Created by Камиль on 02.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI
import StoreKit

struct HomeView: View {
    @StateObject private var VM = HomeViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            List (0..<lessons.count, id: \.self) { index in
                Section(header: Text(lessons[index].title)) {
                    ForEach(0..<lessons[index].lessons.count, id: \.self) { lessonIndex in
                        LessonView(lesson: lessons[index].lessons[lessonIndex])
                    }
                }
            }
            .ignoresSafeArea(.all, edges: .bottom)
            .navigationBarTitle("معلم ثاني")
            .navigationBarItems(trailing:
                Button(action: { VM.isDark.toggle() }, label: {
                Image(systemName: colorScheme == .dark ? "sun.max" : "moon")
                    .font(.callout)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }))
            .onAppear {
                if VM.appLaunches == 7 {
                    Task {
                        try await Task.sleep(nanoseconds: 1_000_000_000)
                        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                            SKStoreReviewController.requestReview(in: scene)
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .preferredColorScheme(VM.isDark ? .dark : .light)
        .accentColor(.primary)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
