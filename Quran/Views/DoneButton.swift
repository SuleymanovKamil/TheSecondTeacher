//
//  DoneButton.swift
//  Quran
//
//  Created by Камиль Сулейманов on 09.02.2022.
//

import SwiftUI

struct DoneButton: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: CoreDataLesson.entity(), sortDescriptors: [])
    private var savedLessons: FetchedResults<CoreDataLesson>
    
    @State var lesson = Lesson(id: 0, title: "Вступление", subtitle: "Почему нужно уметь читать Коран?", view: AnyView(ZeroLessonView(id: 0)))
    let id: Int
    var body: some View {
        HStack {
            Text("Урок освоен")
                .font(.title3)
            Rectangle()
                .stroke()
                .frame(width: 25, height: 25)
                .overlay(
                    Image(systemName: "checkmark")
                        .font(.title2)
                        .opacity(lesson.isComplete ? 1 : 0)
                )
        }
        .onTapGesture {
            lesson.isComplete.toggle()
            savedLessons.forEach { lesson in
                if lesson.id == id {
                    lesson.isComplete.toggle()
                    do {
                        try viewContext.save()
                    } catch {return}
                }
            }
        }
        .onAppear {
            print(savedLessons.count)
            savedLessons.forEach { lesson in
                print(lesson.id, lesson.isComplete)
                if lesson.id == id {
                    self.lesson.isComplete = lesson.isComplete
                }
            }
        }
    }
}

struct DoneButton_Previews: PreviewProvider {
    static var previews: some View {
        DoneButton(lesson: Lesson(id: 0, title: "Вступление", subtitle: "Почему нужно уметь читать Коран?", view: AnyView(ZeroLessonView(id: 0))), id: 0)
    }
}
