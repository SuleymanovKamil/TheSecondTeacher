//
//  LessonView.swift
//  Quran
//
//  Created by Камиль Сулейманов on 05.02.2022.
//

import SwiftUI

struct LessonView: View {
    let lesson: Lesson
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: CoreDataLesson.entity(), sortDescriptors: [])
    private var savedLessons: FetchedResults<CoreDataLesson>
    @State private var isComplete = false
    
    var body: some View {
        NavigationLink(destination: lesson.view
                        .navigationBarTitle(lesson.title))  {
            HStack {
                VStack (alignment: .leading, spacing: 5){
                        Text(lesson.title)
                            .font(.system(size: 20, weight: .regular, design: .default))
                            .foregroundColor(.primary)

                    Text(lesson.subtitle)
                        .font(.system(size: 16, weight: .regular, design: .default))
                        .foregroundColor(.secondary)
                }
                .padding(.top, 10)
                Spacer()

                Image(systemName: "checkmark.circle")
                    .font(.title3)
                    .opacity(isComplete ? 1 : 0)
            }
            .onAppear {
                savedLessons.forEach { lesson in
                    if self.lesson.id == lesson.id {
                       isComplete = lesson.isComplete
                    }
                }
            }
        }
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lesson: introduction.first!)
    }
}
