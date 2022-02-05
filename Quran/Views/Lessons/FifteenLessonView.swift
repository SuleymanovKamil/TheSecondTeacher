//
//  FifteenLessonView.swift
//  Quran
//
//  Created by Камиль on 30.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct FifteenLessonView: View {
    var body: some View {
        GeometryReader { mainScreen in
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading, spacing: 20) {
                        
                        VStack (spacing: 10){
                            
                            Text("Танвин - неопределенное окончание")
                                .fontWeight(.bold)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            
                            Text("Имя существительное в арабском языке может иметь два состояния: определенное и неопределенное. Для русского языка, в котором для определения слов не нужны артикли, все это весьма сложно, поэтому мы не будем углубляться в этот вопрос.  Тем более для чтения Корана, в этом нет никакой необходимости, т.к. текст пишется с огласовками, которых нет в обычном арабском письме. \n\nКратко: если  речь идет о конкретном предмете, явлении или месте, то используется опредленный артикль Аль - ال. Например, бог по арабский - лях له, а слово Аллах состоит из определнного артикля Аль и слово бог - получается Аллах الله\n\nОпределенные слова заканчиваются на гласные звуки (а, и, у) или сукун. Все остальные слова имеют танвинное  окончание, говорящее о их неопределенности. Что же такое танвинное окончание? Это гласный звук с буквой Нун на конце. Пишется такое окончание как сдвоенноая огласовка обычных гласных звуков. ")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            
                            
                            
                            Text("ـً ـٍ ـٌ")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                            
                            Text("Ун. Ин. Ан")
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.system(size: 16))
                                .foregroundColor(.secondary)
              
                            
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        
                        
                        Text("Например:")
                            .fixedSize(horizontal: false, vertical: true)
                          
                        
                        HStack {
                            
                            Spacer()
                            VStack (spacing: 15) {
                                Text("بً ـ (بَنْ) - Бан")
                                Text("بٍ ـ (بِنْ) - Бин")
                                Text("بٌ ـ (بُنْ) - Бун")
                            }.font(.system(size: 30, weight: .regular , design: .serif))
                            Spacer()
                        }
                        .padding(.bottom, 20)
                
                        VStack (spacing: 10){
                            
                            Text("Та марбута - окончание женского рода")
                                .fontWeight(.bold)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            
                            Text("Основным показателем  женского рода в арабском письме является окончание слова на та марбуту - ـة .\n\n Та марбута читается как обычная буква Та - ت и хотя имеет для своего обозначения отдельную букву, все же она не является частью арабского алфавита.")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)

                            Text("При остановке на та марбуте танвин не читается, а сама она превращается в Ха ـه, который звучит значительно мягче - еле слышно")
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.system(size: 16))
                                .foregroundColor(.secondary)
              
                            
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        
                        VStack (spacing: 10){
                            
                            Text("Аят ۝")
                                .fontWeight(.bold)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            
                            Text("Коран состоит сур, а суры из аятов. Традиционные знаки препинания, как точка или запятая, в Коране не используются. Вместо них на конец аята указывает специальный символ ۝ (либо другой символ в виде цветка и т.п. ٭), он и используется как знак остановки чтения.\n\nЕсли вы делаете паузу в чтении на яате, или если вам просто нужно набрать воздух, тогда последняя гласная в слове или стоит танвин, заменяются сукуном. Если же на конце слова стоит алиф, а перед ним танвин Ан, то нун на конце танвина не читается, а алиф тянется. Например: يُسْرًا читается как Юсраа")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                          
                        }
                        .padding(.bottom, 20)
                        
                        Text("Прослушайте и прочитайте (В скобках указан правильный вариант чтения):")
                            .fixedSize(horizontal: false, vertical: true)
                         .padding(.bottom, 10)

                        HStack {
                        
                             Spacer()
                            VStack (spacing: 15) {
                                Text("كِتَبٌ٭ ـ (كِتَابْ)")
                                Text("دَفْتَرٌ٭ ـ (دَفْتَرْ)")
                                Text("مَدْرَسَةٌ٭ ـ (مَدْرَسَهْ)")
                                Text("شَرِيفَةٌ٭ ـ (شَرِيفَهْ)")
                            }.font(.system(size: 30, weight: .regular , design: .serif))
                            
                            AudioPlayer(sound: "tamarbut", showHUD: false)
                                                    .frame(width: 30, height: 30)
                                                   
                            Spacer()
                        }
                        .padding(.bottom, 20)
                        
                        Text("Конец третьего урока")
                            .fixedSize(horizontal: false, vertical: true)
                           
                    }
                    .padding(.horizontal, 10)
                    .padding(.bottom, 20)
                }
            
        }
    }
}


struct FifteenLessonView_Previews: PreviewProvider {
    static var previews: some View {
        FifteenLessonView()
    }
}
