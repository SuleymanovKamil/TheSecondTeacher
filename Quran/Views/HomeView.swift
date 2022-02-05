//
//  ContentView.swift
//  Quran
//
//  Created by Камиль on 02.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI
import StoreKit

struct HomeView: View {
    @StateObject private var VM = HomeViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            VStack (spacing: 10) {
                List  {
                    ForEach(0..<lessonsArray.index(before: 2), id: \.self) { index in
                        NavigationLink(destination: lessonsArray[index].view
                                        .navigationBarTitle(lessonsArray[index].title))  {
                            HStack {
                                VStack (alignment: .leading, spacing: 5){
                                    
                                    Text(lessonsArray[index].title)
                                        .font(.system(size: 20, weight: .regular, design: .default))
                                        .foregroundColor(.primary)
                                    
                                    Text(lessonsArray[index].subtitle)
                                        .font(.system(size: 16, weight: .regular, design: .default))
                                        .foregroundColor(.secondary)
                                }
                                
                                .padding(.top, 10)
                                Spacer()
                            }
                        }
                        
                    }
                    Section(header: Text("Арабский алфавит")) {
                        ForEach(lessonsArray.index(after: 0)..<lessonsArray.index(before: 14), id: \.self) { index in
                            NavigationLink(destination: lessonsArray[index].view
                                            .navigationBarTitle(lessonsArray[index].title))  {
                                HStack {
                                    VStack (alignment: .leading, spacing: 5){
                                        
                                        Text(lessonsArray[index].title)
                                            .font(.system(size: 20, weight: .regular, design: .default))
                                            .foregroundColor(.primary)
                                        
                                        Text(lessonsArray[index].subtitle)
                                            .font(.system(size: 16, weight: .regular, design: .default))
                                            .foregroundColor(.secondary)
                                    }
                                    
                                    Spacer()
                                }
                            }
                            
                        }
                    }
                    .foregroundColor(.primary)
                    Section(header: Text("Знаки не вошедшие в алфавит")) {
                        ForEach(lessonsArray.index(after: 12)...lessonsArray.index(before: 17), id: \.self) { index in
                            NavigationLink(destination: lessonsArray[index].view
                                            .navigationBarTitle(lessonsArray[index].title))  {
                                HStack {
                                    VStack (alignment: .leading, spacing: 5){
                                        
                                        Text(lessonsArray[index].title)
                                            .font(.system(size: 20, weight: .regular, design: .default))
                                            .foregroundColor(.primary)
                                        
                                        Text(lessonsArray[index].subtitle)
                                            .font(.system(size: 16, weight: .regular, design: .default))
                                            .foregroundColor(.secondary)
                                    }
                                    
                                    Spacer()
                                }
                            }
                        }
                    }
                    Section(header: Text("Правила Тажвида")) {
                        ForEach(lessonsArray.index(after: 16)...lessonsArray.index(before: 22), id: \.self) { index in
                            NavigationLink(destination: lessonsArray[index].view
                                            .navigationBarTitle(lessonsArray[index].title))  {
                                HStack {
                                    VStack (alignment: .leading, spacing: 5){
                                        
                                        Text(lessonsArray[index].title)
                                            .font(.system(size: 20, weight: .regular, design: .default))
                                            .foregroundColor(.primary)
                                        
                                        Text(lessonsArray[index].subtitle)
                                            .font(.system(size: 16, weight: .regular, design: .default))
                                            .foregroundColor(.secondary)
                                    }
                                    
                                    Spacer()
                                }
                            }
                        }
                    }
                    Section(header: Text("")) {
                        ForEach(lessonsArray.index(after: 21)...lessonsArray.index(before: 23), id: \.self) { index in
                            NavigationLink(destination: lessonsArray[index].view
                                            .navigationBarTitle("")
                                           
                            ){
                                HStack {
                                    VStack (alignment: .leading, spacing: 5){
                                        
                                        Text(lessonsArray[index].title)
                                            .font(.system(size: 20, weight: .regular, design: .default))
                                            .foregroundColor(.primary)
                                        
                                        Text(lessonsArray[index].subtitle)
                                            .font(.system(size: 16, weight: .regular, design: .default))
                                            .foregroundColor(.secondary)
                                    }
                                    
                                    Spacer()
                                }
                                .padding(.bottom, 20)
                            }
                            
                        }
                    }
                    
                }
                Spacer()
            }
            .ignoresSafeArea(.all, edges: .bottom)
            .onAppear{
                if VM.appLaunches == 7 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                        withAnimation{
                            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                                SKStoreReviewController.requestReview(in: scene)
                                
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("معلم ثاني")
            .navigationBarItems(trailing:
                                    Button(action: { VM.isDark.toggle() }) {
                Image(systemName: colorScheme == .dark ? "sun.max" : "moon")
                    .font(.callout)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .preferredColorScheme(VM.isDark ? .dark : .light)
        .accentColor(colorScheme == .dark ? .white : .black)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
