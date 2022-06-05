//
//  SurrahFalak.swift
//  Quran
//
//  Created by Камиль Сулейманов on 10.02.2022.
//

import SwiftUI

struct SurrahFalak: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("بِسمِ اللَّهِ الرَّحمٰنِ الرَّحيمِ")
                    Text("۝")
                        .font(.callout)
                }
                
                HStack {
                    Text("قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ")
                    Text("۝")
                        .font(.callout)
                }
                
                HStack {
                    Text("مِن شَرِّ مَا خَلَقَ")
                    Text("۝")
                        .font(.callout)
                }
                
                HStack {
                    Text("وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ")
                    Text("۝")
                        .font(.callout)
                }
                
                HStack {
                    Text("وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ")
                    Text("۝")
                        .font(.callout)
                }
                HStack {
                    Text("وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ")
                    Text("۝")
                        .font(.callout)
                }
            }
            .modifier(Arabic())
            
            AudioPlayer(sound: "Falak", showHUD: true)
                .padding(.bottom, 20)
                .padding(.horizontal)
           
            Text("Рассвет")
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
                    Text("Скажи: «Прибегаю к защите Господа рассвета")
                }
                
                HStack (alignment: .top) {
                    Text("۝")
                        .font(.callout)
                    Text("от зла того, что Он сотворил,")
                }
                
                HStack (alignment: .top) {
                    Text("۝")
                        .font(.callout)
                    Text("от зла мрака, когда он наступает,")
                }
                
                HStack (alignment: .top) {
                    Text("۝")
                        .font(.callout)
                    Text("от зла колдуний, поплевывающих на узлы,")
                }
                
                HStack (alignment: .top) {
                    Text("۝")
                        .font(.callout)
                    Text("от зла завистника, когда он завидует».")
                }
            }
            .font(.system(size: 18, weight: .regular , design: .serif))
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
    }
}

struct SurrahFalak_Previews: PreviewProvider {
    static var previews: some View {
        SurrahFalak()
    }
}
