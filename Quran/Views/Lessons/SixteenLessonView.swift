//
//  SixteenLessonView.swift
//  Quran
//
//  Created by Камиль on 01.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct SixteenLessonView: View {
    var body: some View {
        GeometryReader { mainScreen in
            ScrollView (showsIndicators: false) {
                VStack (alignment: .leading, spacing: 20) {
                    
                    VStack (spacing: 10){
                        
                        Text("Хам­за")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        Text("Хамза используется на письме для передачи согласного звука. Хамза употребляется либо самостоятельно, либо (с так называемой подставкой, в качестве которой выступает одна из трех слабых букв: алиф (ا), вав (و) или йа (ى), при этом йа в качестве подставки пишется без точек.\n\nВ начале слова подставкой для хамзы всегда является алиф. При этом хамза пишется либо над алифом (أَ  أُ), либо под ним (إِ). Ког­да под­став­кой для хам­зы слу­жит (و) или (ئ), то эти бук­вы ни­ка­ко­го зву­ка не обо­зна­ча­ют, алишь слу­жат под­став­кой для хам­зы.")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                    }
                    .padding(.bottom, 20)
                    
                    VStack (){
                        
                        Text("Прослушайте и повторите до освоения")
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 10)
                        
                        Text("أَنْتَ  إِذْنٌ  أُذْنٌ  قَرَأَ  مَأْمُولٌ  سَأَلَ  مَاءٌ  أَبٌ  أُمٌّ  إِنَاءٌ  مُؤْتَمَرٌ  سُؤَالٌ  بِئرٌ  لُؤْلُؤٌ")
                            .font(.system(size: 35, weight: .light , design: .default))
                            .environment(\.layoutDirection, .rightToLeft)
                            .lineSpacing(30)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                        
                        AudioPlayer(sound: "hamza_text", showHUD: true)
                            .padding(.top, -10)
                    }
                    .padding(.bottom, 60)
                    
                    VStack (spacing: 10){
                        
                        Text("Васлирование")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        Text("Если слову, имеющему артикль, предшествует слово, оканчивающееся на гласный звук, и если эти два слова произносятся связанно, то есть без паузы между ними, то гласный — [а] в этом артикле не читается. То есть после гласного предыдущего слова сразу произносится ل [-ль-] артикля и далее слово, перед которым стоит артикль. ")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                        
                        HStack {
                            Spacer()
                            VStack (spacing: 15) {
                                Text("Например:")
                                    .fixedSize(horizontal: false, vertical: true)
                                Text("اَلْكِتَابُ اَلْكَبِيرُ")
                                    .font(.system(size: 30, weight: .regular , design: .serif))
                            }
                            Spacer()
                        }
                    }
                    
                    Text("Вместо [аль-китабу аль-кабиру] произносится [аль-китабу-ль-кабиру]. Такое связывание слов с выпадением гласного в артикле называется васлированием (от арабского слова васлатун - связь).")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 30)
                        .lineLimit(nil)
                    
                    VStack (spacing: 10){
                        
                        Text("Лям-алиф")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        HStack {
                            Text("Если за буквой лям ل следует алиф ا, то вместо لـا используется буква лям-алиф لا.") 
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            Spacer()
                        }
                        
                        Text("لاٰ حَوْلَ وَ لا قُوَّةَ اِلاّٰ بِاللهِ")
                            .modifier(Arabic())
                        
                        Text("Ля хауля ва ля куввата илля билляхи. - Нет мощи и силы ни у кого, кроме Аллаха")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                    }
                    .padding(.bottom, 20)
                    
                    Text("Конец четвертого урока")
                        .fixedSize(horizontal: false, vertical: true)
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
                
            }
            
        }
    }
}

struct SixteenLessonView_Previews: PreviewProvider {
    static var previews: some View {
        SixteenLessonView()
    }
}
