//
//  tajweeddOneView.swift
//  Quran
//
//  Created by Камиль on 01.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct tajweeddOneView: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack (spacing: 10) {
                    Text("Тажвид")
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("Тажвид – это наука, посредством которой достигается правильное чтение священного Корана, что исключает искажения смыслового значения книги Аллаха. Читать Коран необходимо так, чтобы каждая буква, каждое удвоение, каждое удлинение и т.д. звучали как положено - это и есть наука Таджвида.\n\n С первого взгляда правила таджвида могут показаться сложными и трудно запоминающимися. Не стоит переживать - большинство современных Коранов печатаются так, что все правила таджвида уже нанесены на огласовки букв или выделены другим цветом. Казанский Коран в этом плане самый простой, в нем проставлены даже долгие гласные, поэтому начинать практику чтение Корана лучше с него.")
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.vertical, 20)
                
                VStack(spacing: 10) {
                    Text("Солнечные и лунные буквы")
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("В арабском алфавите буквы можно разделить на две группы — солнечные буквы и лунные буквы — в зависимости от того, ассимилируются (сливаются. Сморите васлирование) ли они с буквой ﻝ (звуком [l]) предшествующего артикля аль. Артикль в слове «солнце», аш-шамс, ассимилируется, в то время как в слове «луна», аль-камар, остаётся неизменным. Поэтому буквы получили названия солнечные и лунные.\n\nЕсли после определённого артикля «аль» стоит солнечная буква, то артикль не произносится как «аль»: его согласный ассимилируется с первым согласным слова. Например, вместо аль-Ниль читают ан-Ниль. Если после артикля стоит лунная буква, то ассимиляции не происходит.\n\nК солнечным буквам относятся 14 букв:")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text(" ﺕ, ﺙ, ﺩ, ﺫ, ﺭ, ﺯ, ﺱ, ﺵ, ﺹ, ﺽ, ﻁ, ﻅ, ﻝ, ﻥ")
                        .modifier(Arabic())
                    
                    Text("Ознакомтесь с примерами:")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.vertical, 30)
                    
                    Text("اَلْتِلْمِيذُ  اَلْثَمْرُ  اَلْدَرْسُ  اَلْذُرَّةُ  اَلْرَبِيعُ  اَلْزَهْرُ  اَلْسَنَةُ  اَلْشَمْسُ  اَلْصَﻻَةُ  اَلْضَمِيرُ  اَلْطَبِيبُ  اَلْظُهْرُ  اَلْلَبَنُ  اَلْنَوْمُ")
                        .padding(.bottom, -20)
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "3", showHUD: true)
                        .padding(.bottom, 30)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Остальные 14 букв — лунные.")
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("Запомните только солнечные буквы, т.к. все остальные буквы - лунные.")
                                .font(.system(size: 16))
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                    }
                    
                    Text("اَﻷَخُ  اَلْبَلَدُ  اَلْجَمَلُ  اَلْحِصَانُ  اَلْخُبْزُ  اَلْعِلْمُ  اَلْغَزَالُ  اَلْفَﻻَّحُ  اَلْقَمَرُ  اَلْكِتَابُ  اَلْمُسْلِمُ  اَلْهِﻻَلُ  اَلْوَعْدُ  اَلْيَمَنُ")
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "2", showHUD: true)
                        .padding(.bottom, 30)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Конец первого урока")
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

struct tajweeddOneView_Previews: PreviewProvider {
    static var previews: some View {
        tajweeddOneView(id: 0)
    }
}
