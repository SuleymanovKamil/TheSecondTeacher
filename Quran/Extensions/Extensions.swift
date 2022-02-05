//
//  Extensions.swift
//  Quran
//
//  Created by Камиль on 28.08.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct Arabic: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 40, weight: .regular , design: .serif))
            .environment(\.layoutDirection, .rightToLeft)
            .lineSpacing(30)
            .fixedSize(horizontal: false, vertical: true)
            .padding()
    }
}
