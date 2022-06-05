//
//  tajweeddThreeView.swift
//  Quran
//
//  Created by Камиль on 04.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct tajweeddThreeView: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack(spacing: 10) {
                    HStack {
                        Spacer()
                        Text("Икляб - изменение")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Text("Если после буквы Нун с сукуном или после танвина стоит буква Ба (ب), то вместо звука [н] в букве Нун с сукуном или в танвине произносится удвоенный согласный звук буквы Мим (م) с гунной.")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("مِنْ بَعْدِ | سَمِيعٌ بَصِيرٌ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "iklab", showHUD: true)
                        .padding(.bottom, 20)
                }
                .padding(.top, 20)
                
                VStack(spacing: 10) {
                        Text("Ихфа - скрытие")
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                    
                    HStack {
                        Text("Если после буквы Нун с сукуном или после танвина стоит одна из пятнадцати оставшихся, не вошедших в предыдущие три правила (Изхар, Идгам, Икляб) букв:")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                        Spacer()
                    }
                    
                    Text("ت ث ج د ذ ز س ش ص ض ط ظ ف ق ك")
                        .modifier(Arabic())
                    
                    HStack {
                        Text("то звук [н] в букве Нун с сукуном или в танвине удваивается и произносится приглушенно с гунной")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                        Spacer()
                    }
                    
                    Text("مَنْ تَابَ | تُرَابٍ ثُمَّ | وَمَنْ جَهَرَ | مِنْ دِيَارِهِمْ | مُنْذِرُ | غُلاَمًا زَكِيِّا | مَنْ سَبَقَ | غَفُورٌ شَكُورٌ | عَمَﻻً صَالِحًا | عَنْ ضَيْفِهِ | كَلِمَةً طَيٍبَةً | وَلَكِنْ ظَنَنْتُمْ | مِنْ فِئَةٍ | مِنْ قَبْلِ | كِتَابٌ كَرِيمٌ   ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "ihfa", showHUD: true)
                        .padding(.bottom, 30)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Конец третьего урока")
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

struct tajweeddThreeView_Previews: PreviewProvider {
    static var previews: some View {
        tajweeddThreeView(id: 0)
    }
}
