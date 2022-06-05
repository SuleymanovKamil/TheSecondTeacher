//
//  FirstLessonView.swift
//  Quran
//
//  Created by Камиль on 06.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct FirstLessonView: View {
    let id: Int
    
    var body: some View {
            ScrollView (showsIndicators: false) {
                VStack (alignment: .leading, spacing: 10) {
                    HStack {
                        Spacer()
                        Text("Арабский алфавит")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    Text("""
                                                    Особенность арабского алфавита в том, что в нем нет гласных букв, а для обозначения гласных звуков, которых всего три: [А], [И]", [У] - используются огласовки (харака), которые пишутся над, или под буквами. Так, для обозначения звука [А] используется черточка сверху буквы, для [И] снизу, а для "[У] используется запятая:
                                                    
                                                    َ - такая огласовка называется Фатха и читается как звук А,
                                                    
                                                    ِ - такая огласовка называется Кясра и читается как звук И,
                                                    
                                                    ُ - такая огласовка называется Дамма и читается как звук У.
                                                    
                                                    Начертание букв меняется в зависимости от расположения внутри слова (в начале, в конце или в середине). Все буквы одного слова пишутся слитно, за исключением шести букв (алиф, даль, заль, ра, зайн, вав), которые не соединяются со следующей буквой. Слова читаются справа налево.
                                                    
                                                    Познакомимся с первой буквой арабского алфавита и первой буквой наших уроков - Алифом.
                                                    """)
                        .multilineTextAlignment(.leading)
                    
                    
                    HStack {
                        Spacer()
                        Text("Бук­ва Алиф")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    Text("Алиф буква не имеющая своего звука и служит для обозначения гласных звуков или их отсутствия. Например:")
                    
                    
                    HStack (spacing: 30) {
                        Spacer()
                        VStack {
                            Text("اَ اِ اُ")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                                .padding(.top)
                            
                            AudioPlayer(sound: "aiu", showHUD: false)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: 30, height: 30)
                                .padding(.top, 10)
                        }
                        
                        Text("Не забываем про направление письма - справа налево")
                            .font(.system(size: 16))
                            .foregroundColor(.secondary)
                            .offset(y: -30)
                        Spacer()
                    }
                    
                    Text("""
                                   Прочитайте текст самостоятельно и попробуйте запомнить написание буквы Алиф с огласовками.
                                   
                                   Конец первого урока
                                   """)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 40)
                    
                    DoneButton(id: id)
                        .padding(.top)
                        .padding(.bottom, 20)
                }
                .padding(.horizontal)
            }
    }
}

struct FirstLessonView_Previews: PreviewProvider {
    static var previews: some View {
        FirstLessonView(id: 0)
    }
}


