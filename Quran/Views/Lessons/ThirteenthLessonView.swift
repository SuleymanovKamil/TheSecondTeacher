//
//  ThirteenthLessonView.swift
//  Quran
//
//  Created by Камиль on 19.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct ThirteenthLessonView: View {
    
    var body: some View {
        GeometryReader { mainScreen in
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading, spacing: 20) {
                        
                        VStack (alignment: .leading, spacing: 10){
                            
                            Text("Долгие гласные")
                                .fontWeight(.bold)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            
                            Text("До сих пор мы имели дело только с краткими гласными, которые обозначаются соответствующими огласовками. Теперь мы изучим и долгие гласные.\n\nДолгие гласные звучат аналогично кратким, но в два раза дольше и сохраняют те же оттенки, которые придают гласным различные согласные.\n\n Долгие гласные обозначаются по одному и тому же принципу: после согласной следует одна из трех букв (смотрите примеры ниже) без огласовки, обозначающая только удлинение предшествующего гласного, обозначенного огласовкой. \n\nТо есть:")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            
                            Text("Долгий гласный [а] пишется как буква алиф ا следующая за согласной, огласованной фатхой:")
                                .fixedSize(horizontal: false, vertical: true)
                          
                            Text("ـَـا")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                            
                            
                            Text("Долгий гласный [у] пишется как буква و следующая за согласной, огласованной даммой:")
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("ـُـو")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                            
                            Text("Долгий гласный [и] пишется как буква ي следующая за согласной, огласованной кясрой.")
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("ـِـي")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                            
                       
                        
                        Text("Например:")
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.top)
                          
                        }
                        HStack {
                            Spacer()
                            VStack (spacing: 15) {
                                Text("بَ + ا = باَ (баа)")
                                Text("بِ + ي = بِي (бии)")
                                Text("بُ + و = بُو (буу)")
                            }.font(.system(size: 30, weight: .regular , design: .serif))
                            Spacer()
                            
                            AudioPlayer(sound: "baa", showHUD: false)
                                .frame(width: 30, height: 30)
                                
                               
                            Spacer()
                        }
                     
                        .padding(.bottom, 40)
                        
                        VStack (){
                            
                            Text("Почитаем?")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.bottom, 5)
                            
                            
                            Text("مَالْ  حَلْ  نَارْ  جَاهْ  شَامْ  بَارِي  عَالِي  قَاضيِ  حَاليِ  كَلَامْ  سَلَامْ  نِظَامْ  غُلَامْ  غُبَارْ  تُرَابْ  اَمْوَالْ  اَحْوَالْ  اَعْمَالْ  اَمْوَاتْ  قَوَاعِدْ  شَوَاهِدْ  كَوَاكِبْ  اِكْرَامْ  اِخْلَاصْ  عَالِمْ  صَابِرْ  مَاهِرْ  طَالِبْ  صَالِحْ  قَامَا  طَافَا  تَابَا  قُولِي  تُوفِي  تُوبِي")
                                .modifier(Arabic())
                            
                            
                            AudioPlayer(sound: "madd_text", showHUD: true)
                                .padding(.top, -10)
                            
                        }
                        .padding(.bottom, 40)
                        
                        
                        VStack (alignment: .leading) {
                            
                            Text("Мадда")
                                .fontWeight(.bold)
                                .padding(.bottom, 10)
                            
                            Text("Если над Алифом стоит знак Мадды - волнистая линия آ, значит огласовка Алифа тнется в 4 раза, так как знак мадды и означает двойной Алиф")
                                .fixedSize(horizontal: false, vertical: true)
                                
                                .padding(.bottom, 10)
                            
                            
                            HStack {
                                Spacer()
                                
                                
                                Text("آزَرَ  آسِف  آسِيَا")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                Spacer()
                            }
                             .padding(.bottom, 10)
                            
                            Text("В некоторых сурах знак Мадды можно увидеть над другими буквами, помимо Алифа. В таких случаях эти буквы читаются так же как и их названия.")
                                .fixedSize(horizontal: false, vertical: true)
                                
                                .padding(.bottom, 10)
                            
                            HStack {
                                
                                
                                Spacer()
                                
                                Text("الم")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                Text(" - Алиф, Лям, Мим")
                                    .font(.system(size: 20, weight: .regular , design: .serif))
                                
                                AudioPlayer(sound: "AlifLamMim", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                
                                Spacer()
                            }
                            
                        }
                        .padding(.vertical, 20)
                       
                        
                        Text("Конец первого урока")
                            .fixedSize(horizontal: false, vertical: true)
                           
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
                
           
        }
    }
}

struct ThirteenthLessonView_Previews: PreviewProvider {
    static var previews: some View {
        ThirteenthLessonView()
    }
}
