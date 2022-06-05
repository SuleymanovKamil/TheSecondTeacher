//
//  HomeViewModel.swift
//  Quran
//
//  Created by Камиль Сулейманов on 05.02.2022.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @AppStorage("appLaunches") var appLaunches = 0
    @AppStorage("isDark") var isDark = false
    
}
