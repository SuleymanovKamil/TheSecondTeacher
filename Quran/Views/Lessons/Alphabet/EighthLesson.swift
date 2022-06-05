//
//  EighthLesson.swift
//  Quran
//
//  Created by Камиль on 16.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct EighthLesson: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20){
                VStack(spacing: 10) {
                    Text("Бук­ва Шин")
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    Text("Схожа с русской Ш, имеет 4 формы написания")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        Text("ش شـ ـشـ ـش")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "shashishu", showHUD: false)
                            .frame(width: 30, height: 30)
                        
                        Spacer()
                    }
                }
                .padding(.top,20)
                .padding(.bottom, 20)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Прочтите")
                        .padding(.bottom, -10)
                    Text("رَشْ  بُشْ  شَرْ  شَقْ  شَمْ شَكْ  بِشْرُ  شِرْبُ  شَهْرُ  نَشْرُ شُكْرُ  شُرْبُ  مَشْرَبْ  مَشْرِبْ مَشْرِق مُشْتَهِرْ مُشْتَرَكْ  اِشْتَهَرَ  يَشْتَهِرُ  اِبْرَنْشَقَ  يَبْرَنْشِقُ")
                        .modifier(Arabic())
                        .padding(.bottom, 10)
                    
                    AudioPlayer(sound: "sha01", showHUD: true)
                }
                .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Text("Бук­ва Син")
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    
                    Text("Звучит как русская С, но более мягче. Выглядит как Шин без точек")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    
                    HStack {
                        Spacer()
                        Text("س سـ ـسـ ـس")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "sasisu", showHUD: false)
                            .frame(width: 30, height: 30)
                        
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.bottom, 10)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Про­чти­те и пов­то­ри­те текст")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("بَسْ  سَمْ  سِرْ  سِنْ  سِلْ  سَفَرْ سَقَرْ سَبَقْ سَلَفْ  سَمَكْ  فَرَسْ مَسْلَكْ  مَسْكَنْ  مُسْلِمْ مُسْرِفْ سِمْسِمْ اَسْلَمَ  يُسْلِمُ اِسْتَيْسَرَ  يَسْتَيْسِرُ")
                        .modifier(Arabic())
                        .padding(.bottom, 10)
                    
                    AudioPlayer(sound: "sa01", showHUD: true)
                }
                .padding(.bottom, 30)
                
                VStack {
                    Text("Бук­ва Са")
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    Text("Межзубная С из 4го урока. \nПри произношении язык располагается между зубами, как в английской TH")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Text("ث ثـ ـثـ ـث")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "thathithu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.bottom, 20)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Про­чти­те текст")
                    
                    Text("بَثْ  ثِبْ  ثَمْ  ثِنْ  ثَمَرْ   ثَمَنْ  ثَوْرُ  ثَوْبُ  ثَيْبُ  مِثْلُ  مُثْلُ  مَثَلْ  كَوْثَرْ  اَكْثَرَ  يُكْثِرُ  اَثْبَتَ  يُثْبِتُ اِسْتَكْثَرَ  يَسْتَكْثِرُ  اِسْتَثْقَلَ  يَسْتَثْقِلُ ")
                        .modifier(Arabic())
                        .padding(.bottom, -10)
                    
                    AudioPlayer(sound: "tha01", showHUD: true)
                }
                .padding(.bottom, 30)
                
                VStack (alignment: .center, spacing: 10){
                    Text("Срав­ни­те про­из­но­ше­ние Са и Син.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        Text("سَمَرْ - ثَمَرْ \n\nسَبْتُ - ثَبْتُ \n\nسُلْسُ - ثُلْثُ")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Spacer()
                    }
                    
                    AudioPlayer(sound: "tha02", showHUD: true)
                }
                .padding(.bottom, 30)
                
                Text("Конец восьмого урока")
                    .fixedSize(horizontal: false, vertical: true)
                
                DoneButton(id: id)
                    .padding(.top)
                    .padding(.bottom, 50)
            }
            .padding(.top)
            .padding(.horizontal)
        }
    }
}

struct EighthLesson_Previews: PreviewProvider {
    static var previews: some View {
        EighthLesson(id: 0)
    }
}
