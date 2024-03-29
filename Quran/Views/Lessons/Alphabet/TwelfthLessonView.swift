//
//  TwelfthLessonView.swift
//  Quran
//
//  Created by Камиль on 18.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct TwelfthLessonView: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack {
                    Text("Бук­ва Заль")
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    Text("Межзубная З, аналогичная английской Th в слове That")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Text("ذ ذ ـذ ـذ")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "zozizu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.vertical, 20)
                
                VStack {
                    Text("Прочтите текст")
                        .padding(.bottom)
                    
                    Text("اِذْ  مُذْ  خُذْ  عُذْ  ذُبْ  ذُقْ  ذَرْ  مُنْذُ  اِذْنُ  بَذْلُ  ذِكْرُ  ذِهْنُ ذَهَبْ  مَذْهَبْ  ذَهَلَ  يَذْهَلُ  بَذَلَ  يَبْذُلُ  اَذْهَبَ  يُذْهِبُ")
                        .modifier(Arabic())
                        .padding(.horizontal)
                    
                    AudioPlayer(sound: "zo01", showHUD: true)
                }
                .padding(.bottom, 30)
                
                VStack (alignment: .center, spacing: 10){
                    Text("Срав­ни­те про­из­но­ше­ние Заль и За")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    VStack (spacing: 20) {
                        Text("ذِفْرُ - زِفْرُ")
                        Text("بَذْلُ - بَزْلُ")
                        Text("اَبْذَلْ - اَبْزَلْ")
                    }
                    .font(.system(size: 40, weight: .regular , design: .serif))
                    .fixedSize(horizontal: false, vertical: true)
                    
                    AudioPlayer(sound: "zo02", showHUD: true)
                }
                .padding(.bottom, 30)
                
                VStack {
                    Text("Бук­ва За")
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    Text("Еще одна За. Кончик языка при произношении этой буквы должен прикасаться к передним верхним зубам, иначе вы произнесете обычную [З], которая передаётся буквой ز.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("ظ ظـ ـظـ ـظ")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "zzizu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.bottom, 30)
                
                VStack {
                    Text("Про­чти­те текст")
                    
                    Text("ظَنْ  ظِلْ  فَظْ  حَظْ  ظُهْرُ اَظْهَرْ  اَظْفَرْ  مَظْهَرْ  مَنْظَرْ مُظْهِرْ  مُظْلِمْ  ظَهَرَ  يَظْهَرُ نَظَرَ  يَنْظُرُ  ظَلَمَ  يَظْلِمُ اِنْتَظَمَ  يَنْتَظِمُ  اِسْتَعْظَمَ  يَسْتَعْظِمُ")
                        .modifier(Arabic())
                        .padding(.bottom, -10)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    AudioPlayer(sound: "z01", showHUD: true)
                    
                }
                .padding(.bottom, 30)
                
                VStack (alignment: .center){
                    Text("Срав­ни­те про­из­но­ше­ние разных звуков [з]")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    VStack (spacing: 20) {
                        Text("ذَفَرْ - ظَفَرْ")
                        Text("حَظَرْ - حَضَرْ")
                        Text("ظَهْرُ - ضَهْرُ")
                        Text("زَهْرُ - ظَهْرُ")
                        Text("اَزْهَرْ - اَظْهَرْ")
                        Text("اَعْزَمْ - اَعْظَمْ")
                    }
                    .font(.system(size: 40, weight: .regular , design: .serif))
                    .fixedSize(horizontal: false, vertical: true)
                    
                    .fixedSize(horizontal: false, vertical: true)
                    
                    AudioPlayer(sound: "z02", showHUD: true)
                }
                .padding(.bottom, 30)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Конец двенадцатого урока и алфавита.\nВсё самое интересное впереди.")
                            .fixedSize(horizontal: false, vertical: true)
                        
                        DoneButton(id: id)
                            .padding(.top)
                            .padding(.bottom, 50)
                    }
                    
                    Spacer()
                }
            }
        }
        .padding(.horizontal)
    }
}

struct TwelfthLessonView_Previews: PreviewProvider {
    static var previews: some View {
        TwelfthLessonView(id: 0)
    }
}
