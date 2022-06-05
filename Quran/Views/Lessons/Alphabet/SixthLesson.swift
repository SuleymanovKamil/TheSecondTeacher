//
//  SixthLesson.swift
//  Quran
//
//  Created by Камиль on 15.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct SixthLesson: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack {
                    Text("Бук­ва Кяф")
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 20)
                    
                    Text("Звучит как русская К. Звук [А] после Кяфа смягчается и звучит как [Я]")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("ك كـ ـكـ ـك")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "kakiku", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.vertical, 20)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Прочтите текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    Text("كَمْ  كُمْ  كُنْ كَيْ  بَكْرُ   مَكْرُ  كَرْمُ  كَنْزُ  تَرْكُ  كَتَبَ  يَكْتُبُ  تَرَكَ  يَتْرُكُ   كَتَبْتُمْ  اَمَرَكَ  اَمَرَتْكَ  كُنْتُ  مُمْكِنْ")
                        .modifier(Arabic())
                        .padding(.bottom, -20)
                    
                    AudioPlayer(sound: "ka01", showHUD: true)
                }
                .padding(.bottom, 20)
                
                VStack {
                    Text("Бук­ва Лям")
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 20)
                    
                    Text("Звучит как русская Л. Гласные звуки с Лямом всегда смягчаются: А звучит как Я, У как Ю, сукун как мягкий знак. Исключение слово Аллах, здесь А после Ляма всегда произносится твердо. Имеет 4 способа написания")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Text("ل لـ ـلـ ـل")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "lalilu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.bottom, 20)
                
                VStack (alignment: .center, spacing: 10){
                    Text("Прочтите текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    Text("اَلْ  بَلْ  لَمْ  لُمْ  لَنْ كِلْ  نَزَلَ  لَزِمَ  كَمُلَ  اَنْزَلَ  اَلْزَمَ  اَكْمَلَ  اَكَلْتُ  اَكَلْنَ  اَكَلْتَ  اَكَلْتِ  اَكَلْتُمْ  بُلْبُلْ  يَلَمْلَمْ  تَزَلْزَلَ  يَتَزَلْزَلُ   مُتَزَلْزِلْ    ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "la01", showHUD: true)
                }
                .padding(.bottom, 20)
                
                VStack {
                    Text("Бук­ва Вав")
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    Text("На слух звучит как русская буква В, но только для её произношения губы вытягиваются в трубочку, как будто мы хотим произнести русскую У.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("و و ـو ـو")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "wawiwu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.bottom, 20)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Прочтите текст")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("اَوْ  رَوْ  نَوْ  لَوْ  وَرَمْ  وَتَرْ  وَمَنْ  وَلَنْ  وَلَمْ  وَكَمْ اَوْلُ  رَوْمُ  يَوْمُ  كَوْنُ وَيْلُ  وَزْنُ  كَوْكَبْ مَوْكِبْ  اَوْلَمْتُمْ  اَوْتَرْتُمْ  ")
                        .modifier(Arabic())
                        .padding(.top, 10)
                    
                    AudioPlayer(sound: "wa01", showHUD: true)
                }
                .padding(.bottom, 30)
                
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Конец шестого урока. Славно поработали!")
                            .fixedSize(horizontal: false, vertical: true)
                        
                        DoneButton(id: id)
                            .padding(.top)
                            .padding(.bottom, 50)
                    }
                    Spacer()
                }
            }
            .padding(.horizontal)
        }
    }
}

struct SixthLesson_Previews: PreviewProvider {
    static var previews: some View {
        SixthLesson(id: 0)
    }
}
