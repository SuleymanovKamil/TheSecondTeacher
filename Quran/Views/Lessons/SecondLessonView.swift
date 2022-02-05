//
//  SecondLessonView.swift
//  Quran
//
//  Created by Камиль on 06.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct SecondLessonView: View {
    
    
    var body: some View {
        
        GeometryReader { mainScreen in
  
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading, spacing: 20){
                        
                        HStack {
                            Spacer()
                            Text("Сукун")
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        Text("Помимо трех огласовок обозначающих гласные звуки, существует огласовка для обозначения отсутствия гласного звука. Она называется Сукун и пишется как кружок над буквой - ْ. Сукун эквивалентен русскому твердому знаку. ")
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 20)
                        
                        HStack {
                            Spacer()
                            Text("Варианты написания букв")
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        Text("В зависимости от расположение букв в тексте они могут иметь до 4х вариантов написания.\n\nСуществуют:\nНачальный, серединный, конечный и обособлленный вариант написания букв. \n\nНа прошлом уроке мы познакомились с Алифом. Алиф имеет всего два вида написания - обособленный и конечный - когда буква стоит в конце слова.")
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        HStack {
                            Spacer()
                            VStack {
                                Text("ــا")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                    .padding(.leading, 30)
                                
                                Text("Алиф в конце слова")
                                    .font(.system(size: 16))
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                        }
                       
                        
                        VStack (alignment: .leading){
                            HStack {
                                Spacer()
                                Text("Бук­ва Ра")
                                    .fontWeight(.bold)
                                   
                                
                                Spacer()
                            }
                            .padding(.bottom)
                            
                            Text("Ра произносится как русская Р, только более твердо. Помимо обособленного варианта написания, соединяется с предыдущей буквой.")
                                .fixedSize(horizontal: false, vertical: true)
                            
                            HStack{
                                Spacer()
                                Text("رَ رِ رُ")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                                
                                AudioPlayer(sound: "rariru", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    .padding()
                                    .padding(.bottom)
                                Spacer()
                            }
                            
                            
                            HStack {
                                Text("Попробуйте сначала прочитать текст самостоятельно, а потом проверить, прослушав его")
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding(.bottom, 30)
                                    .padding(.horizontal, 5)
                                Spacer()
                            }
                            
                            HStack {
                                VStack (alignment: .center){
                                    Text("اَرْ اِرْ اُرْ")
                                        .font(.system(size: 40, weight: .regular , design: .serif))
                                    
                                        .padding(.bottom, -10)
                                    
                                    AudioPlayer(sound: "ra01", showHUD: false)
                                        .frame(width: 30, height: 30)
                                     .padding(.trailing, 10)
                                        .padding(.top)
                               
                                    
                                }
                                VStack {
                                    Text("Обратите внимание на то, что Алиф не соединяется слева")
                                        .fixedSize(horizontal: false, vertical: true)
                                        .font(.system(size: 16))
                                        .foregroundColor(.secondary)
                                        .padding(.bottom, 30)
                                    
                                    Spacer()
                                }
                            }
                            
                        }
                        .padding(.bottom, 20)
                        
                        VStack{
                            HStack {
                                Spacer()
                                Text("Бук­ва За")
                                    .fontWeight(.bold)
                                Spacer()
                            } .padding(.bottom)
                            
                            HStack {
                                Text("За произносится как русская З, а на письме выглядить как Ра с точкой наверху. Как и Ра имеет два вида написания: помимо обособленного варианта, соединяется с предыдущей буквой.")
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            .padding(.bottom)
                            
                            HStack(alignment: .center, spacing: 10){
                                
                                Text("زَ زِ زُ")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                                AudioPlayer(sound: "za", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    .padding()
                            }
                            
                            Spacer()
                            
                        }
                        
                        
                        HStack {
                            Text("Конец второго урока")
                            
                            Spacer()
                        }
    
                }
                
                
            }
            .padding(.horizontal)
                .padding(.bottom, 20)
                .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct SecondLessonView_Previews: PreviewProvider {
    static var previews: some View {
        SecondLessonView()
    }
}
