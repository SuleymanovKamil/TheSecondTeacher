//
//  SeventhLesson.swift
//  Quran
//
//  Created by Камиль on 16.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct SeventhLesson: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                VStack (spacing: 10) {
                    Text("Бук­ва Ха (ha)")
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("Не имеет аналогов в русском языке, но имеет в английском. Звук этой буквы схож с английским h, поэтому эту букву часто пишут так - ha, чтобы не было путаницы, ведь в арабском языке есть еще 2 буквы Ха, которые звучат по-разному.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("ه هـ ـهـ ـه")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "hahihu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                    
                    Text(" Звук h образуется в гортани. Профессор Юшманов Н. В. образно описывает звук h таким образом: «Придыхание (как дышат, чтобы запотеть стекло).")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom)
                        .padding(.top, 10)
                }
                .padding(.top, 20)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Почитаем  ")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, -10)
                    Text("هَبْ  هَمْ  هَلْ  هُوَ  هِيَ هُمْ  زُهْ  اَهَمْ  وَهَبْ  لَهَبْ وَهَمْ  لَهُمْ  بِهِمْ  مِنْهُ  مِنْهُمْ  اِلَيْهِ  اِلَيْهِمْ  اَمْهِلْهُمْ  ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "ha01", showHUD: true)
                }
                .padding(.bottom, 30)
                
                VStack {
                    HStack {
                        Spacer()
                        Text("Бук­ва Фа")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    
                    Text("Звучит как русская Ф. Имеет 4 способа написания")
                        .fixedSize(horizontal: false, vertical: true)
                     
                    HStack {
                        Text("ف فـ ـفـ ـف")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "fafifu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.bottom, 20)
                
                VStack {
                    Text("Про­чти­те и пов­то­ри­те текст")
                    Text("فَمْ  فَنْ  كَفْ  فَلَكْ  كَفَنْ نَفَرْ  فَوْرُ  فَوْزُ  فَهْمُ  فِكْرُ زِفْرُ  كِفْلُ  فُلْفُلْ  نَوْفَرْ نَوْفَلْ  فَهِمَ  يَفْهَمُ  اِفْهَمْ اِفْتَتَنَ  يَفْتَتِنُ  اِفْتَكَرَ  يَفْتَكِرُ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "fa01", showHUD: true)
                }
                .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Text("Бук­ва Каф")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    
                    Text("Схожа с Кяфом, который мы проходили ранее, но звучит более твердо и энергично.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        Text("ق قـ ـقـ ـق")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "kokiku", showHUD: false)
                            .frame(width: 30, height: 30)
                        
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    
                    Text("При произнесении арабского „каф“ соприкосновение происходит еще глубже (чем русская к), так глубоко, как только можно: между корнем языка и самой глубокой частью мягкого неба.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 20)
                }
                .padding(.top, -20)
            
                VStack(alignment: .center, spacing: 10) {
                    Text("Про­чти­те и пов­то­ри­те текст")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("زُقْ  قِنْ  قُلْ  قُمْ  قِفْ  قِهْ قَلْبُ  قَبْلُ  فَوْقُ  قَلَمْ قَمَرْ  لَقَبْ  قُمْقُمْ  اِقْتَرَبَ يَقْتَرِبُ  اِنْقَلَبَ  يَنْقَلِبُ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "ko01", showHUD: true)
                        .padding(.bottom, -50)
                }
                .padding(.bottom, 70)
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Срав­ни­те про­из­но­ше­ние Кяф и Каф.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        Text("فَلَكْ - فَلَقْ\n\nفَرْكُ - فَرْقُ")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 10)
                        Spacer()
                    }
                    AudioPlayer(sound: "ko03", showHUD: true)
                }
                .padding(.bottom, 40)
                
                Text("Конец седьмого урока")
                    .fixedSize(horizontal: false, vertical: true)
                
                DoneButton(id: id)
                    .padding(.top)
                    .padding(.bottom, 50)
            }
            .padding(.horizontal)
        }
    }
}

struct SeventhLesson_Previews: PreviewProvider {
    static var previews: some View {
        SeventhLesson(id: 0)
    }
}
