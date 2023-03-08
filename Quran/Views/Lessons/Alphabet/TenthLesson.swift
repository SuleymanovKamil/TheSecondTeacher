//
//  TenthLesson.swift
//  Quran
//
//  Created by Камиль on 17.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct TenthLesson: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Text("Бук­ва Ха")
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    
                    Text("Твердая версия русской буквы Х")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        Text("خ خـ ـخـ ـخ")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "khokhikhu", showHUD: false)
                            .frame(width: 30, height: 30)
                        
                        Spacer()
                    }
                }
                .padding(.top, 20)
                .padding(.bottom, 20)
                
                VStack {
                    Text("Прочтите текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    Text("خَبْ  خَلْ  خَرَجَ  خَبَرْ  خَشَبْ  خَلَفْ  خَيْرُ  خَتْمُ  خَمْرُ  خَوْفُ  مَخْرَجْ  مُخْبِرْ اَخْرَجَ  يُخْرِجُ اَخْبَرَ  يُخْبِرُ اِسْتَخْبَرَ  يَسْتَخْبِرُ اِسْتَخْرَجَ  يَسْتَخْرِجُ")
                        .modifier(Arabic())
                        .padding(.bottom, -10)
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "kho01", showHUD: true)
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                VStack {
                    HStack {
                        Spacer()
                        Text("Бук­ва Ха")
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    
                    Text("Мягкая, шипящая версия русской буквы Х")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("ح حـ ـحـ ـح")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "hehihu", showHUD: false)
                            .frame(width: 30, height: 30)
                        
                    }
                }
                .padding(.bottom, 10)
                
                VStack (alignment: .center, spacing: 10){
                    Text("Про­чти­те и пов­то­ри­те текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom)
                    
                    Text("حَيْ  حِلْ  حَجْ  حَسَنْ   مُحْسِنْ  مَحْشَرْ  مِنْحَرْ   مَحْفَلْ  اَحْسَنْ  اِمْتَحَنَ   يَمْتَحِنُ  اِحْتَمَلَ  يَحْتَمِلُ ِاسْتَحْسَنَ   يَسْتَحْسِنُ   اِحْرَنْجَرَ   يَحْرَنْجِمُ ")
                        .modifier(Arabic())
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "he01", showHUD: true)
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                VStack (alignment: .center, spacing: 10){
                    Text("Срав­ни­те про­из­но­ше­ние двух Ха")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    VStack(spacing: 20) {
                        Text("خَلْقُ - حَلْقُ")
                        Text("خَتْمُ - حَتْمُ")
                        Text("اَرْخَمَ - اَرْحَمَ")
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 40, weight: .regular , design: .serif))
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "he02", showHUD: true)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Text("Бук­ва Гъайн")
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    
                    Text("Это русская (Г) только с хриплым сопровождением. Внимательно прослушайте аудио.")
                        .fixedSize(horizontal: false, vertical: false)
                    
                    HStack {
                        Spacer()
                        Text("غ غـ ـغـ ـغ")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "gogigu", showHUD: false)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 20)
                
                Text("Про­чти­те текст стараясь правильно произностить буквы")
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 20)
                
                VStack {
                    Text("غَمْ  غَبْ  غِلْ  غَيْرُ   بَغْلُ  فَرْغُ  غَبْغَبْ  مَبْلَغْ   مَغْرِبْ  اِغْلِبْ  اِغْفِرْ   اِشْتَغَلَ  يَشْتَغِلُ   اِسْتَغْفَرَ  يَسْتَغْفِرُ  ")
                        .modifier(Arabic())
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "go01", showHUD: true)
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                HStack {
                    VStack(alignment: .leading) {  Text("Конец десятого урока.\nОсталось совсем чуть-чуть!")
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

struct TenthLesson_Previews: PreviewProvider {
    static var previews: some View {
        TenthLesson(id: 0)
    }
}
