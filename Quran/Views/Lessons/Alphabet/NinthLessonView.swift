//
//  NinthLessonView.swift
//  Quran
//
//  Created by Камиль on 17.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct NinthLessonView: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                VStack (alignment: .center, spacing: 10) {
                    Text("Бук­ва Сад")
                        .fontWeight(.bold)
                    
                    Text("Более твердая и энергичная версия буквы Син(ﺱ)")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    HStack {
                        Text("ص صـ ـصـ ـص")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "sosisu", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                    .padding(.bottom, 30)
                }
                .padding(.top, 20)
                
                VStack(spacing: 10) {
                    Text("Прочтите текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom)
                    
                    Text("صُمْ صِفْ  فَصْ  صَرَفْ  صَبَرْ  قَصَبْ  نَصَرَ  يَنْصُرُ  اِسْتَبْصَرَ  يَسْتَبْصِرُ")
                        .modifier(Arabic())
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "so01", showHUD: true)
                        Spacer()
                    }
                }
                .padding(.top, 10)
                .padding(.bottom, 30)
                
                VStack {
                    Text("Срав­ни­те про­из­но­ше­ние Сад и Син.")
                        .padding(.bottom, 20)
                    
                    VStack (spacing: 20) {
                        Text("سَفَرْ - صَفَرْ")
                        
                        Text("سَيْفُ - صَيْفُ")
                        
                        Text("اِنْتَسَبَ - اِنْتَصَبَ")
                        
                    }
                    .font(.system(size: 40, weight: .regular , design: .serif))
                    .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "so02", showHUD: true)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Spacer()
                        Text("Бук­ва Та")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    Text("Твердая версия буквы Та. При про­из­но­ше­нии кон­чик язы­ка до­тра­ги­ва­ет­ся ос­но­вы верх­них пе­ред­них зу­бов, а зад­няя часть язы­ка под­ни­ма­ет­ся вы­ше, при этом сам звук [т] по­лу­ча­ет бо­лее твер­дый от­те­нок.")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Spacer()
                        Text("ط طـ ـطـ ـط")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "totitu", showHUD: false)
                            .frame(width: 30, height: 30)
                            
                        Spacer()
                    }
                    Spacer()
                }
                
                VStack(alignment: .center, spacing: 20) {
                    Text("Прослушайте и прочитайте текст")
                    Text("طَلْ  طَيْ  شَطْ  بَطْ  قَطْ  فَقَطْ  وَطَنْ  طَلَبْ  طَرَفْ  طُهْرُ  طِفْلُ  مَطَرْ  مَطْلَبْ  مَسْقَطْ  مَوْطِنُ    مَرْبِطْ اِصْطَبَرَ  يَصْطَبِرُ  اِسْتَوْطَنَ يَسْتَوْطِنُ ")
                        .modifier(Arabic())
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "to01", showHUD: true)
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                VStack (alignment: .center, spacing: 10) {
                    Text("Срав­ни­те про­из­но­ше­ние двух Та.")
                    
                    VStack (spacing: 20){
                        Text("تَرَفْ - طَرَفْ")
                        Text("سَبْتُ - سَبْطُ")
                        Text("مُسْتَتِرْ - مُسْتَطِرْ")
                        
                    }
                    .font(.system(size: 40, weight: .regular , design: .serif))
                    .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "to02", showHUD: true)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
                
                VStack {
                    Text("Бук­ва Джим")
                        .fontWeight(.bold)
                    
                    Text("Две русских звука [Д] и [Ж] в одной букве. Два звука произносятся слитно")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Text("ج جـ ـجـ ـج")
                            .font(.system(size: 40, weight: .regular , design: .serif))
                        
                        AudioPlayer(sound: "djadjidju", showHUD: false)
                            .frame(width: 30, height: 30)
                    }
                    .padding(.bottom, 30)
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Про­чти­те текст")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, -10)
                    
                    Text("جَمْ  جَرْ  جِنْ  جَبْ  جُلْ  جَبَلْ  جَمَلْ  اَجْرُ  فَجْرُ  جَوْهَرُ  جَوْرَبُ  تَجَوْرَبَ  يَتَجَوْرَبُ  اِسْتَجْلَبَ يَسْتَجْلِبُ ")
                        .modifier(Arabic())
                    
                    HStack {
                        Spacer()
                        AudioPlayer(sound: "dja01", showHUD: true)
                        Spacer()
                    }
                }
                .padding(.bottom, 30)
        
                Text("Конец девятого урока")
                    .fixedSize(horizontal: false, vertical: true)
                
                DoneButton(id: id)
                    .padding(.top)
                    .padding(.bottom, 50)
            }
            .padding(.horizontal)
        }
    }
}

struct NinthLessonView_Previews: PreviewProvider {
    static var previews: some View {
        NinthLessonView(id: 0)
    }
}
