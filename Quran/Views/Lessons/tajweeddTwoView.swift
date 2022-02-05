//
//  tajweeddTwoView.swift
//  Quran
//
//  Created by Камиль on 03.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct tajweeddTwoView: View {
    var body: some View {
        GeometryReader { mainScreen in
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading, spacing: 10) {
                        VStack (spacing: 10) {
                            
                            Text("На Нун с сукуном и танвины (نْ ً ٍ ٌ  ) распространяются 4 правила чтения:\n\nИзхар (явность),\nИдгам (слияние)\nИкляб (изменение),\nИхфа (скрытие)\n\nРассмотрим эти правила.")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                        }
                        .padding(.bottom)
                      
                        
                        VStack (spacing: 10) {
                            
                            HStack {
                                Spacer()
                                Text("Изхар - явность")
                                    .fontWeight(.bold)
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            
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
                                    .lineLimit(nil)
                                Spacer()
                            }
                            
                            Text("وَانْحَرْ | مِنْ خَوْفٍ | مِنْ عَيْنٍ | مِنْ غَاىِبَةٍ | سَﻻَمٌ هِىَ | وَ مَنْ اَعْرَضَ")
                                .padding(.bottom, -20)
                                .modifier(Arabic())
                            
                            AudioPlayer(sound: "izhar", showHUD: true)
                                .padding(.bottom, 80)
                            
                        }
                       
                        
                        
                        VStack (spacing: 10) {
                            
                            HStack {
                                Spacer()
                                Text("Идгам - слияние")
                                    .fontWeight(.bold)
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            
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
                                .padding(.bottom, -20)
                                .modifier(Arabic())
                            
                            AudioPlayer(sound: "gunna", showHUD: true)
                                .padding(.bottom, 80)
                            
                            HStack {
                                
                                Text("оставшиеся две буквы Ра и Лям просто удваиваются:")
                                    .fixedSize(horizontal: false, vertical: true)
                                    .lineLimit(nil)
                                Spacer()
                            }
                            
                            VStack {
                                Text("مِنْ رَبِّهِمْ | وَ لَمْ يَكُنْ لَهُ")
                                .padding(.bottom, -20)
                                    .modifier(Arabic())
                                
                                AudioPlayer(sound: "bilaGunna", showHUD: true)
                                .padding(.bottom, 90)
                            }
                        }
                        HStack {
                            
                            Text("В этом правиле есть исключения. Слова:")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            Spacer()
                        }
                        
                        VStack {
                            Text("بُنْيَانٌ الدُّنْيَا  قِنْوَانٌ  صِنْوَانٌ")
                                .padding(.bottom, -20)
                                .modifier(Arabic())
                            
                            AudioPlayer(sound: "noGunna", showHUD: true)
                            .padding(.bottom, 30)
                            
                            HStack {
                                
                                Text("читаются без удвоения. Запомните их, их всего четыре.")
                                    .fixedSize(horizontal: false, vertical: true)
                                    .lineLimit(nil)
                                Spacer()
                            }
                        }.padding(.bottom, 40)
                        
                        
                        Text("Конец второго урока")
                            .fixedSize(horizontal: false, vertical: true)
                         
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                }
         
        }
    }
}

struct tajweeddTwoView_Previews: PreviewProvider {
    static var previews: some View {
        tajweeddTwoView()
    }
}
