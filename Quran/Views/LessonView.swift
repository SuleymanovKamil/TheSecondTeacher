//
//  LessonView.swift
//  Quran
//
//  Created by Камиль Сулейманов on 05.02.2022.
//

import SwiftUI

struct LessonView: View {
    let lesson: Lesson
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
            }
        }
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lesson: introduction.first!)
    }
}
