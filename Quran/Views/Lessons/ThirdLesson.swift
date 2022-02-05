//
//  ThirdLesson.swift
//  Quran
//
//  Created by Камиль on 13.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct ThirdLesson: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { mainScreen in
                  
                        ScrollView (showsIndicators: false) {
                            VStack (alignment: .leading, spacing: 20) {
                                
                                HStack {
                                    Spacer()
                                    Text("Бук­ва Мим")
                                        .fontWeight(.bold)
                                    Spacer()
                                }.padding(.bottom, 10)
                                
                                Text("Звучит как русская М и имеет 4 способа написания, то есть соединяется как справа, так и слева. При произношении губы плотно сжимаются, чтобы буква звучала более выразительней")
                                    .fixedSize(horizontal: false, vertical: true)

 
                                VStack{
                                    HStack  {
                                        
                                        Spacer()
                                        
                                        Text("م مـ ـمـ ـم")
                                            .font(.system(size: 40, weight: .regular , design: .serif))
                                        
                                        AudioPlayer(sound: "mamimu", showHUD: false)
                                        .frame(width: 30, height: 30)
                                       
                                        Spacer()
                                    }
                                }
                                .padding(.bottom, 10)
                                
                                HStack {
                                    Spacer()
                                    Text("Потренируемся")
                                        .fontWeight(.bold)
                                        .fixedSize(horizontal: false, vertical: true)
                                    Spacer()
                                }
                                
                                Text("Вспомните, всё что мы уже прошли и попытайтесь прочесть слова. Если у вас не получается - ничего страшного. Прослушайте чтение и попытайтесь снова. Важно запоминать начертание букв и их произношение")
                                    .fixedSize(horizontal: false, vertical: true)
                                VStack (alignment: .center, spacing: 10){
                                    
                                    Text("اَزْ  اِزْ  اُزْ  اَزْرُ  اُرْزُ  اُزْرُ  زَرْ  زِرْ  زَمْرُ  رَمْزُ")
                                        .modifier(Arabic())
       
                                    AudioPlayer(sound:"za1", showHUD: true)
       
                                }
                                .padding(.bottom, 60)
                                        
                                Text("Тяжело в учении, легко в бою. Попрактикуемся еще немного")
                                    .fixedSize(horizontal: false, vertical: true)
                  
                                VStack {
                                    Spacer()
                                    VStack {
                                        Text("اَمْ  اِمْ  اُمْ  مُرْ  مُزْ  رُمْ  اَمَرَ اُمْرَ  اَمْرُ  اِمْرُ  رَمْزُ  اِرْمِ  مَرْمَرْ  رَمْرَمْ  زَمْزَمْ  اَرْزَمْ")
                                            .modifier(Arabic())
                                            .padding(.bottom, 20)
                                        
                                        
                                        
                                        AudioPlayer(sound: "ma01", showHUD: true)
                                        
                                    }
                                    
                                    Spacer()
                                }
                                
                                Spacer()
                                
                                Text("Конец третьего урока")
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding(.top)
                                    
                            }
                            .padding(.horizontal)
                            .padding(.bottom, 20)
                        }
     
                 
        }
    }
}

struct ThirdLesson_Previews: PreviewProvider {
    static var previews: some View {
        ThirdLesson()
    }
}










