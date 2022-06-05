//
//  tajweeddTwoView.swift
//  Quran
//
//  Created by Камиль on 03.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct tajweeddTwoView: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {
                HStack {
                    Text("На Нун с сукуном и танвины (نْ ً ٍ ٌ  ) распространяются 4 правила чтения:")
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                Text("Изхар (явность),\nИдгам (слияние)\nИкляб (изменение),\nИхфа (скрытие)")
                    .fixedSize(horizontal: false, vertical: true)
                
                HStack {
                    Text("распространяются 4 правила чтения:")
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                .padding(.bottom, 30)
                
                VStack(spacing: 10) {
                        Text("Изхар - явность")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                     
                    HStack {
                        Text("Если после буквы Нун с сукуном или танвина стоит одна из следующих шести букв:")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                        Spacer()
                    }
                    
                    Text("ح خ ع غ ه ء")
                        .modifier(Arabic())
                    
                    HStack {
                        Text("то звук [н] в букве Нун с сукуном или в танвине читается четко и ясно. Например:")
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Text("وَانْحَرْ | مِنْ خَوْفٍ | مِنْ عَيْنٍ | مِنْ غَاىِبَةٍ | سَﻻَمٌ هِىَ | وَ مَنْ اَعْرَضَ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "izhar", showHUD: true)
                        .padding(.bottom, 30)
                }
                
                VStack(spacing: 10) {
                        Text("Идгам - слияние")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Text("Если после буквы Нун с сукуном или танвина стоит одна из следующих шести букв:")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                        Spacer()
                    }
                    
                    Text("ر ل م ن و ي")
                        .modifier(Arabic())
                    
                    HStack {
                        Text("то звук [н] в букве Нун с сукуном или в танвине не читается, а последующая буква удваивается. Кроме того, если эта одна из следующих букв:")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                        Spacer()
                    }
                    
                    Text(" م ن و ي")
                        .modifier(Arabic())
                    
                    HStack {
                        Text("то читать ее нужно через нос (правило назализации - идигам гунна):")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                        Spacer()
                    }
                    
                    Text("مِنْ مَسَدٍ | مِنْ نَفْسٍ | لَهَبٍ وتَبَّ | وُجُوهٌ يَوْمَئِذٍ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "gunna", showHUD: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("оставшиеся две буквы Ра и Лям просто удваиваются:")
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    VStack {
                        Text("مِنْ رَبِّهِمْ | وَ لَمْ يَكُنْ لَهُ")
                            .modifier(Arabic())
                        
                        AudioPlayer(sound: "bilaGunna", showHUD: true)
                            .padding(.bottom, 10)
                    }
                }
                HStack {
                    Text("В этом правиле есть исключения. Слова:")
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                VStack {
                    Text("بُنْيَانٌ الدُّنْيَا  قِنْوَانٌ  صِنْوَانٌ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "noGunna", showHUD: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("читаются без удвоения. Запомните, их всего четыре.")
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Конец второго урока")
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

struct tajweeddTwoView_Previews: PreviewProvider {
    static var previews: some View {
        tajweeddTwoView(id: 0)
    }
}
