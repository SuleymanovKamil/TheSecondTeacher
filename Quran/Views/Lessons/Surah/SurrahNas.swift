//
//  SurrahNas.swift
//  Quran
//
//  Created by Камиль Сулейманов on 10.02.2022.
//

import SwiftUI

struct SurrahNas: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("بِسمِ اللَّهِ الرَّحمٰنِ الرَّحيمِ")
                        Text("۝")
                            .font(.callout)
                    }
                       
                    HStack {
                        Text("قُلْ أَعُوذُ بِرَبِّ النَّاسِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("مَلِكِ النَّاسِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("إِلَهِ النَّاسِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack (alignment: .top) {
                        Text("الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("مِنَ الْجِنَّةِ وَالنَّاسِ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                }
                .modifier(Arabic())
                
                AudioPlayer(sound: "AlNas", showHUD: true)
                    .padding(.bottom, 20)
                    .padding(.horizontal)
            
                Text("Люди")
                .font(.system(size: 20, weight: .regular , design: .serif))
                .padding(.bottom, 10)
                
                VStack (alignment: .leading, spacing: 10) {
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Во имя Аллаха, Милостивого, Милосердного!")
                    }
                       
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Скажи: «Прибегаю к защите Господа людей,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Царя людей,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                            Text("Бога людей,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("от зла искусителя отступающего (или сжимающегося) при поминании Аллаха,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("который наущает в груди людей")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("и бывает из джиннов и людей».")
                    }
                }
            
            .font(.system(size: 18, weight: .regular , design: .serif))
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
    }
}

struct SurrahNas_Previews: PreviewProvider {
    static var previews: some View {
        SurrahNas()
    }
}
