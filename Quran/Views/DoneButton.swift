//
//  DoneButton.swift
//  Quran
//
//  Created by Камиль Сулейманов on 09.02.2022.
//

import SwiftUI

struct DoneButton: View {
    @State var lesson = Lesson(id: 0, title: "Вступление", subtitle: "Почему нужно уметь читать Коран?", view: AnyView(ZeroLessonView(id: 0)))
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: CoreDataLesson.entity(), sortDescriptors: [])
    private var savedLessons: FetchedResults<CoreDataLesson>
    let id: Int
    var body: some View {
        HStack {
            Text("Урок освоен?")
                .font(.title3)
           Circle()
                .stroke()
                .frame(width: 25, height: 25)
                .overlay(
                    Image(systemName: "checkmark")
                        .font(.callout)
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
            savedLessons.forEach { lesson in
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
