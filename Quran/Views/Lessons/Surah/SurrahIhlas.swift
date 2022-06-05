//
//  surrah.swift
//  Quran
//
//  Created by Камиль Сулейманов on 10.02.2022.
//

import SwiftUI

struct SurrahIhlas: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("بِسمِ اللَّهِ الرَّحمٰنِ الرَّحيمِ")
                        Text("۝")
                            .font(.callout)
                    }
                       
                    HStack {
                        Text("قُل هُوَ اللَّهُ أَحَدٌ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("اللَّهُ الصَّمَدُ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("لَمْ يَلِدْ وَلَمْ يُولَدْ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ")
                        Text("۝")
                            .font(.callout)
                    }
                    
                }
                .modifier(Arabic())
                
                AudioPlayer(sound: "AlIhlas", showHUD: true)
                    .padding(.bottom, 20)
                    .padding(.horizontal)
            
                Text("Очищение веры")
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
                        Text("Скажи: «Он — Аллах Единый,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("Аллах Самодостаточный.")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                            Text("Он не родил, и не был рождён,")
                    }
                    
                    HStack (alignment: .top) {
                        Text("۝")
                            .font(.callout)
                        Text("и нет никого равного Ему».")
                    }
                }
            
            .font(.system(size: 18, weight: .regular , design: .serif))
            .padding(.bottom, 30)
        }
    }
}

struct surrah_Previews: PreviewProvider {
    static var previews: some View {
        SurrahIhlas()
    }
}
