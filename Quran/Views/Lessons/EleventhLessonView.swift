//
//  EleventhLessonView.swift
//  Quran
//
//  Created by Камиль on 17.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct EleventhLessonView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        
        GeometryReader { mainScreen in
                ScrollView (showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20){
                        
                        VStack {
                            
                            Text("Бук­ва Гайн")
                                .fontWeight(.bold)
                                .padding(.bottom, 10)
                            
                            Text("Этот звук чужд русскому языку. Согласный Гайн“ является одним из самых трудных звуков арабского языка. Для его произношения нужно напрячь голосовые связки в том месте, где слюна проходит в горло при проглатывании. Старайтесь повторять ее произношение вслед за озвучкой, чтобы ваше звучание этой буквы совпадало с ней")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.horizontal, 5)
                            
                            HStack {
                                Text("ع عـ ـعـ ـع")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                
                                AudioPlayer(sound: "eiui", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                            }
                        }
                        .padding(.top, 20)
                            
                        .padding(.bottom, 30)
                        
                        
                        VStack {
                            
                            Text("Прослушайте и прочтите текст")
                            
                            Text("بِعْ  عَنْ  عَمْ  سَعْ  مَعْ   عَرَبَ  عَجَمْ  عَجَبْ  عَمَلْ   عِلْمُ  عُمْرُ  جُمْعُ  جَعْلُ   عَبْعَبْ  عَسْكَرْ  عَيْلَمْ   جَعْفَرْ  عَنْبَرْ")
                                .modifier(Arabic())
                                .padding(.horizontal)
                                .padding(.bottom, -10)
                            
                            AudioPlayer(sound: "e01", showHUD: true)
                            
                        }
                        .padding(.bottom, 80)
                        
                        VStack {
                            Text("Срав­ни­те про­из­но­ше­ние Гъайн и Гайн")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.bottom)
                            
                            
                            VStack (spacing: 20) {
                                Text("غَيْنُ - عَيْنُ")
                                Text("بَغْلُ - بَعْلُ")
                                Text("بَلْغُ - بَلْعُ")
                            }
                            .font(.system(size: 40, weight: .regular , design: .serif))
                            .fixedSize(horizontal: false, vertical: true)
                            .environment(\.layoutDirection, .rightToLeft)
                            
                            HStack {
                                AudioPlayer(sound: "e02", showHUD: true)
                                
                            }
                        }
                            
                        .padding(.bottom, 60)
                        
                        VStack (alignment: .center){
                            
                            HStack {
                                Spacer()
                                Text("Бук­ва Даль")
                                    .fontWeight(.bold)
                                    .padding(.bottom, 10)
                                
                                Spacer()
                            }
                            
                            Text("Обычная русская Д - то, что нужно после Гайн")
                                .fixedSize(horizontal: false, vertical: true)
                            
                            
                            HStack {
                                Spacer()
                                Text("د د ـد ـد")
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                
                                
                                AudioPlayer(sound: "dadidu", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                Spacer()
                            }
                            
                        }
                            
                        .padding(.bottom, 10)
                        
                        VStack {
                            Text("Про­чти­те текст")
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("دُمْ  دُبْ  دُفْ  رِدْ  زِدْ   تَدْ  دَرْسُ  دَفْعُ  دَبْغُ  دَلْكُ  دَهْرُ  دُهْنُ  دُلْدُلْ   فُدْفُدْ  هُدْهُدْ  اُشْدُدْ   اِعْتَدَلَ يَعْتَدِلُ   اِسْتَرْشَدَ  يَسْتَرْشِدُ")
                                .modifier(Arabic())
                            
                            HStack {
                                Spacer()
                                AudioPlayer(sound: "da01", showHUD: true)
                                Spacer()
                            }
                        }
                        .padding(.bottom, 60)
                        
                        VStack (alignment: .center){
                            
                            HStack {
                                Spacer()
                                Text("Бук­ва Дад")
                                    .fontWeight(.bold)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                            
                            
                            Text("Звук Дад напоминает звуки «лд», слившиеся в один звук.\nЭтот звук выходит из центральной части языка, который прижимается к верхним коренным зубам. Либо к правому ряду зубов, либо к левому. Первый вариант легче, чем второй. Корень языка приподымается вверх к мягкому нёбу.")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.bottom, 20)
                            
                            
                            HStack {
                                Spacer()
                                Text("ض ضـ ـضـ ـض")
                                    .fixedSize(horizontal: false, vertical: true)
                                    .font(.system(size: 40, weight: .regular , design: .serif))
                                
                                AudioPlayer(sound: "dodidu", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                Spacer()
                            }
                            
                        }
                            
                        .padding(.bottom, 20)
                        
                        VStack {
                            Text("Про­чти­те текст")
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("ضَيْفُ  عَضْلُ  ضَهْبُ   ضَبْطُ  ضَعْفُ  عَرْضُ   مَضْرِبْ مِضْرَبْ اِضْرِبْ   تَضْرِبُ  اَضْرِبُ  نَضْرِبُ  اِضْتَرَبَ  يَضْتَرِبُ   اِسْتَضْعَفَ  يَسْتَضْعِفُ    ")
                                .modifier(Arabic())
                              
                            HStack {
                                
                                AudioPlayer(sound: "do01", showHUD: true)
                                
                            }
                            
                        }
                            
                        .padding(.bottom, 60)
                        
                        
                        
                        VStack {
                            Text("Срав­ни­те про­из­но­ше­ние Даль и Дад")
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.bottom, 10)
                            
                            VStack (spacing: 20) {
                                Text("دَرْسُ - ضَرْسُ")
                                Text("وَدْعُ - وَضْعُ")
                                Text("بَعْدُ - بَعْضُ")
                            }
                            .font(.system(size: 40, weight: .regular , design: .serif))
                            .fixedSize(horizontal: false, vertical: true)
                            .environment(\.layoutDirection, .rightToLeft)
                            
                            HStack {
                                AudioPlayer(sound: "do02", showHUD: true)
                            }
                        }
                        .padding(.bottom, 40)
                        
                        
                        
                        Text("Конец одиннадцатого урока")
                        
                        
                        
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
              
        }
        
    }
}

struct EleventhLessonView_Previews: PreviewProvider {
    static var previews: some View {
        EleventhLessonView()
    }
}
