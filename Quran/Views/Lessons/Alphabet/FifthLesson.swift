//
//  Fifthlesson.swift
//  Quran
//
//  Created by Камиль on 15.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct FifthLesson: View {
    let id: Int
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Text("Бук­ва Йа")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    
                    Text("Звучит как русская Я и имеет 4 способа написания")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        Text("ي يـ ـيـ ـي")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "jajiju", showHUD: false)
                            .frame(width: 30, height: 30)
                        
                        Spacer()
                    }
                }
                .padding(.vertical, 20)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Про­чти­те и про­слу­шай­те текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, -10)
                    
                    Text("اَيْ  اَيْمُ  مَيْتُ  رَمْيُ  يَمَنْ   مَرْيَمْ  مَيْزَرْ  مَيْمَنْ  اَيْمَنْ  اَمْرَيْنِ  زَيْتَيْنِ  اَيْمَيْنِ  مَيْتَيْنِ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "ya1", showHUD: true)
                }
                .padding(.bottom, 40)
                
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Text("Бук­ва Ба")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 10)
                        
                        Spacer()
                    }
                    Text("Звучит как русская Б, но губы при этом смыкаются сильнее, чтобы буква звучала звонко. Имеет 4 способа написания")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Text("ب بـ ـبـ ـب")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "babibu", showHUD: false)
                            .frame(width: 30, height: 30)
                        
                        Spacer()
                    }
                    .padding(.vertical, 20)
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Про­чти­те и про­слу­шай­те текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 30)
                    
                    Text("اَبْ  اِبْنُ  بِنْتُ  بَيْتُ  بَيْنُ رَيْبُ  زَيْنَبْ  بَرْبَرْ بَيْرَمْ  اَبْرَمْ  مِنْبَرْ  بِاَمْرَيْنِ  بِبَيْتَيْنِ  مِنْبَرَيْنِ  زَيْنَبَيْنِ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "ba01", showHUD: true)
                }
                
                Text("Конец пятого урока")
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 30)
                
                DoneButton(id: id)
                    .padding(.top)
                    .padding(.bottom, 50)
            }
            .padding(.horizontal)
        }
    }
}

struct Fifthlesson_Previews: PreviewProvider {
    static var previews: some View {
        FifthLesson(id: 0)
    }
}






