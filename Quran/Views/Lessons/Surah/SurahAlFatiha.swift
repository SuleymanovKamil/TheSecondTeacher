//
//  SurahAlFatiha.swift
//  Quran
//
//  Created by Камиль Сулейманов on 10.02.2022.
//

import SwiftUI

struct SurahAlFatiha: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("أَعُوْذُ بِاللّٰهِ مِنَ الشَّيْطٰانِ الرَّجِيْمِ")
                        .font(.system(size: 30, weight: .regular , design: .serif))
                        .environment(\.layoutDirection, .rightToLeft)
                        .lineSpacing(20)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                    
                    HStack {
                        Text("بِسمِ اللَّهِ الرَّحمٰنِ الرَّحيمِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ")
                        Text("۝")
                            .font(.callout)
                    }
                       
                    HStack {
                        Text("الرَّحمٰنِ الرَّحيمِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("مَالِكِ يَوْمِ الدِّينِ")
                        Text("۝")
                            .font(.callout)
                    }
                    HStack {
                        Text("إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ")
                        Text("۝")
                            .font(.callout)
                    }
                    HStack {
                        Text("اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ")
                        Text("۝")
                            .font(.callout)
                    }
                    HStack {
                        Text("صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ")
                        Text("۝")
                            .font(.callout)
                    }
                }
                .modifier(Arabic())
                
                AudioPlayer(sound: "AlFatiha", showHUD: true)
                    .padding(.bottom, 20)
                    .padding(.horizontal)
            
                Text("Аль-Фатиха | Открывающая Коран")
                .font(.system(size: 20, weight: .regular , design: .serif))
                .padding(.bottom, 10)
                
                VStack (alignment: .leading, spacing: 10) {
                    Text("Прибегаю к Аллаху от проклятого шайтана.")
                        .font(.system(size: 14, weight: .regular , design: .serif))
                  
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Во имя Аллаха, Милостивого, Милосердного!")
                    }
                       
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Хвала Аллаху, Господу миров,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Милостивому, Милосердному,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Властелину Дня воздаяния!")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                            Text("Тебе одному мы поклоняемся и Тебя одного молим о помощи.")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Веди нас прямым путем,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("путем тех, кого Ты облагодетельствовал, не тех, на кого пал гнев, и не заблудших.")
                    }
                }
            .font(.system(size: 18, weight: .regular , design: .serif))
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
    }
}

struct SurahAlFatiha_Previews: PreviewProvider {
    static var previews: some View {
        SurahAlFatiha()
    }
}
