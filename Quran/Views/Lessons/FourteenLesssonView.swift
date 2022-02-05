//
//  FourteenLesssonView.swift
//  Quran
//
//  Created by Камиль on 30.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct FourteenLesssonView: View {
    
    var body: some View {
        GeometryReader { mainScreen in
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading, spacing: 20) {
                        
                        VStack (spacing: 10){
                            
                            Text("Ташдид - удвоение")
                                .fontWeight(.bold)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            
                            Text("Характерной особенностью арабского письма является наличие удвоенных согласных. Подобное явление имеется и в русском языке (например в словах: масса, сонный, оттого).\n\nВ арабском письме удвоение обозначается не повторение буквы, как в русском, а специальным надстрочным значком над той буквой, которую следует произнести как удвоенный звук.\n\nУдвоения согласного звука называется по - арабски ташдид - усиление.")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            
                            
                            
                            Text("ـّـ")
                                .font(.system(size: 40, weight: .regular , design: .serif))
                            
                            Text("Значок удвоения представляет собой уменьшенную в размерах головку буквы шин без точек и называется Шадда.")
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
                                                         Text("رَبَ + ّ = رَبَّ (رَبْبَ)")
                                                         Text("رَبِ + ّ = رَبِّ (رَبْبِ)")
                                                         Text("رَبُ + ّ = رَبُّ (رَبْبُ)")
                                                     }.font(.system(size: 30, weight: .regular , design: .serif))
                          
                            Spacer()
                         
                            
                            AudioPlayer(sound: "rabba", showHUD: false)
                                                          .frame(width: 30, height: 30)
                                                     
                                                      
                            Spacer()
                        }
                        .padding(.bottom, 20)
                        
                        
                        Text("Обратите внимание - огласовка звука [и] пишется не под буквой, а под знаком удвоения.")
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.system(size: 16))
                            .foregroundColor(.secondary)
                         
                            
                            
                            .padding(.bottom, 40)
                        
                        VStack (alignment: .leading){
                            
                            Text("Прочтите текст уделяя внимание удвоенным буквам")
                                .fixedSize(horizontal: false, vertical: true)
                                             
                            
                            Text("اِنَّ  اَنَّ  جَرَّ  شَكَّ  بَرُّ  حَجُّ  ذَمُّ  حَقُّ  شَرُّ  بَرُّ  سِتُّ  عِزُّ  دَبَّرَ  كَثَّرَ  فَجَّرَ  وَحَّدَ  سَخَّرَ  حَرَّمَ  رَزَّقَ  بَشَّرَ  فَصَّلَ  عَطَّرَ  دُبِّرَ  كُثِّرَ  سُخِّرَ  فُصِّلَ  يُسِّرَ  تَدَبُّرْ  تَكَبُّرْ  تَوَحُّدْ  تَعَصُّبْ  تَعَلُّمْ  تَفَكُّرْ  تَصَوُّرْ")
                                .modifier(Arabic())
                            
                            AudioPlayer(sound: "rabba_text", showHUD: true)
                                .padding(.top, -10)
                        }
                        .padding(.bottom, 50)
   
                        
                        Text("Конец второго урока")
                            .fixedSize(horizontal: false, vertical: true)
                          
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
              
        }
    }
}

struct FourteenLesssonView_Previews: PreviewProvider {
    static var previews: some View {
        FourteenLesssonView()
    }
}
