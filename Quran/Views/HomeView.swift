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
    @AppStorage("appLaunches") var appLaunches = 0
    @AppStorage("isDark") var isDark = false
    @Environment(\.colorScheme) var colorScheme
    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: CoreDataLesson.entity(), sortDescriptors: [])
    private var savedLessons: FetchedResults<CoreDataLesson>
    
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
                Button(action: { isDark.toggle() }, label: {
                Image(systemName: colorScheme == .dark ? "sun.max" : "moon")
                    .font(.callout)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }))
            .onAppear {
                loadData()
                if appLaunches == 7 {
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
        .preferredColorScheme( isDark ? .dark : .light)
        .accentColor(.primary)
    }
    
    private func loadData() {
        if savedLessons.isEmpty {
            for i in 0..<lessons.count {
                lessons[i].lessons.forEach { lesson in
                    let coreDataLesson = CoreDataLesson(context: viewContext)
                    coreDataLesson.id = Int64(lesson.id)
                    coreDataLesson.isComplete = lesson.isComplete
                    
                    do {
                        try viewContext.save()
                    } catch {
                        let nsError = error as NSError
                        fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
