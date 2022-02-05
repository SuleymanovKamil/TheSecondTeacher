//
//  tajweeddFourView.swift
//  Quran
//
//  Created by Камиль on 06.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

struct tajweeddFourView: View {
    var body: some View {
        GeometryReader { mainScreen in
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading, spacing: 20) {

                        VStack (spacing: 10) {
                            Text("Следующие три правила относятся к Мим (م) с сукуном")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            
                            
                        }
                        .padding(.bottom, 10)
                         
                        
                        VStack (alignment:.leading, spacing: 10) {
                            
                            HStack {
                                Spacer()
                                Text("Ихва шафавия")
                                    .fontWeight(.bold)
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            
                            Text("Если после буквы Мим с сукуном стоит буква Ба - ب, то буква Мим удваивается и произносится с гунной (через нос).")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            
                            
                            HStack {
                                Spacer()
                                Text("اَلَمْ يَعْلَمْ بِاَنَّ اللهَ يَرَى")
                                    .modifier(Arabic())
                                
                                AudioPlayer(sound: "ihfaShafavi", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                Spacer()
                            }
                            
                            
                        }
                        .padding(.bottom, 20)
                        
                        VStack (spacing: 10) {
                            
                            HStack {
                                Spacer()
                                Text("Идгам шафавия")
                                    .fontWeight(.bold)
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            
                            Text("Если после Мим с сукуном стоит еще одна буква Мим, с любой огласовкой, то в этом случае первая Мим с сукуном переходит во вторую с огласовкой.")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            
                            
                            HStack {
                                
                                Spacer()
                                Text("اَنَّهُمْ مُلاَقُوا رَبِّهِمْ")
                                    .modifier(Arabic())
                                
                                AudioPlayer(sound: "idgamShafavi", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                Spacer()
                            }
                          
                            
                            
                        }
                        .padding(.bottom, 20) 
                        
                        VStack (alignment:.leading, spacing: 10) {
                            
                            HStack {
                                Spacer()
                                Text("Изхар шафавия")
                                    .fontWeight(.bold)
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            
                            Text("Если после буквы Мим с сукуном стоит любая, не входящая в предыдущие два правила буква, то Мим читается четко и ясно.")
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                            
                            
                            HStack {
                                
                                Spacer()
                                
                                Text("اَلْحَمْدُالِلهِ")
                                    .modifier(Arabic())
                                
                                AudioPlayer(sound: "izharShafavi", showHUD: false)
                                    .frame(width: 30, height: 30)
                                    
                                Spacer()
                            }
                           
                            
                        }
                       
                        
                        Text("Конец четвертого урока")
                            .fixedSize(horizontal: false, vertical: true)
                           
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                }
          
        }
    }
}

struct tajweeddFourView_Previews: PreviewProvider {
    static var previews: some View {
        tajweeddFourView()
    }
}
