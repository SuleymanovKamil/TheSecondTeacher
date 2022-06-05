//
//  tajweeddFiveView.swift
//  Quran
//
//  Created by Камиль on 06.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct tajweeddFiveView: View {
    let id: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack (spacing: 10) {
                    Text("Мы не будем останавливаться на остальных правилах таджвида ввиду редкости их использования. Как писалось ранее, в современных изданиях Корана огласовки уже содержат в себе все правила таджвида, читающему лишь остается обратить на них внимание. С оставшимися правилами вы можете ознакомиться и самостоятельно в интернете.\n\n Давайте попрактикуемся. Попробуйте прочитать один из вариантов Ташаххуда читаемого в намазе самостоятельно:")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("التَّحِيَّاتُ لِلهِ٭ وَالصَّلَوَاتُ وَالطَّيِّبَاتُ٭ السَّلاَمُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ٭ السَّلاَمُ عَلَيْنَا وَعَلَى عِبَادِ اللهِ الصَّالِحِينَ‏ ٭ أَشْهَدُ أَنْ لاَ إِلَهَ إِلاَّ الله٭ وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ٭")
                        .padding(.bottom)
                        .modifier(Arabic())
                    
                    AudioPlayer(sound: "Attahiyat", showHUD: true)
                        .padding(.bottom, 20)
                    
                    Text("Получилось? Замечательно. Не получилось? Не беда, все решает практика. Попробуйте еще раз, а потом еще и еще. Иншааллах, все получиться, главное не бросать.\n\nНесколько советов для дальнейшего развития:\n\nНайдите учителя, чтобы поставить правильное произношение\n\nНачните чтение Корана с конца. С небольших сур, которые найдете дальше.\n\nСначала слушайте, потом читайте\n\nНе торопитесь!")
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.bottom, 30)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Конец урока.")
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

struct tajweeddFiveView_Previews: PreviewProvider {
    static var previews: some View {
        tajweeddFiveView(id: 0)
    }
}
