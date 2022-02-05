//
//  FourthLesson.swift
//  Quran
//
//  Created by Камиль on 13.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct FourthLesson: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { mainScreen in
          
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .center, spacing: 20) {
                        
                        VStack{
                            
                            Text("Бук­ва Нун")
                                .fontWeight(.bold)
                                .padding(.bottom, 30)
                            
                            
                            
                            Text("Звучит как русская Н и имеет 4 способа написания")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.top, -20)
                                .padding(.horizontal, 5)
                            
                            
                            
                            HStack {
                                
                                Text(" ن نـ ـنـ ـن")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                
                                AudioPlayer(sound: "naninu", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                
                                
                            }
                        }.padding(.top, 20)
                            .padding(.bottom, 30)
                        
                        VStack{
                            
                            Text("Бук­ва Та")
                                .fontWeight(.bold)
                                .padding(.bottom, 30)
                            
                            Text("Звучит как русская Т и имеет 4 способа написания")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.top, -20)
                                .padding(.horizontal, 5)
                            
                            
                            
                            
                            Spacer(minLength: 0)
                            HStack {
                                Spacer()
                                
                                Text(" ت تـ ـتـ ـت")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                
                                AudioPlayer(sound: "tatitu", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                
                                
                                
                                Spacer()
                            }
                        }
                            
                        .padding(.bottom, 20)
                        
                        
                        VStack {
                            
                            Text("Бук­ва Са")
                                .fontWeight(.bold)
                                .padding(.bottom, 30)
                            
                            Text("Межзубная С к ней мы вернемся позже")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.top, -20)
                                .padding(.bottom, 10)
                            
                            
                            
                            HStack {
                                Spacer()
                                
                                Text("ث ثـ ـثـ ـث")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                
                                AudioPlayer(sound: "thathithu", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                    .padding(.horizontal)
                                
                                
                                Spacer()
                            }
                            
                        }.padding(.bottom, 20)
                        
                        
                        Text("Заметили, что эти буквы отличаются только количеством точек?\nЗапоминаем:\nНун - 1 точка,\nТа - 2 точки,\nСа - 3 точки")
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.system(size: 16))
                            .foregroundColor(.secondary)
                            .padding(.bottom, 40)
                        
                        VStack (alignment: .center, spacing: 10){
                            Text("Время поразмять мозги")
                                .fontWeight(.bold)
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.bottom, -10)
                            
                            Text("مَتْ  مِتْ  مُتْ  تَمَرْ   تَرِرْ  زُرْتُ اَمَرْتِ  اُمِرْتُ  اَمَرْتُمْ  مَرَرْتُمْ  مُرِرْتُمْ")
                                .modifier(Arabic())
                            
                            
                            
                            AudioPlayer(sound: "ta01", showHUD: true)
                            
                            
                        }
                        .padding(.bottom, 80)
                        
                        Text("И еще немного")
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        VStack{
                            
                            Text("اَنْ  اِنْ  زَنْ  مَنْ  مِنْ  اَنْتَ  نِمْتَ اَنْتِ  اَنْتُمْ  نِمْتُمْ  نَزِنُ  اَمَرْنَ  اُمِرْنَ")
                                .modifier(Arabic())
                            
                            
                            AudioPlayer(sound: "na1", showHUD: true)
                            
                            
                            
                        }
                            
                        .padding(.bottom, 60)
                        
                        Text("Конец четвертого урока")
                            .fixedSize(horizontal: false, vertical: true)
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
                
                
           
        }
    }
}

struct FourthLesson_Previews: PreviewProvider {
    static var previews: some View {
        FourthLesson()
    }
}
