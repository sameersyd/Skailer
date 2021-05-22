//
//  NeuShadow.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import SwiftUI

struct NeuShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color(hex: "FFFFFF", alpha: 0.2), radius: 1, x: -7, y: -7)
            .shadow(color: Color(hex: "F6FBFF", alpha: 0.7), radius: 4, x: -13, y: -7)
            .shadow(color: Color(hex: "F4F8FB", alpha: 0.3), radius: 10, x: -8, y: 5)
            .shadow(color: Color(hex: "AABBC9", alpha: 0.8), radius: 10, x: 10, y: 9)
//            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
//            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
//            .shadow(color: Color(hex: "FFFFFF", alpha: 0.2), radius: 10, x: -7, y: -7)
//            .shadow(color: Color(hex: "F6FBFF", alpha: 0.7), radius: 10, x: -13, y: -7)
//            .shadow(color: Color(hex: "F4F8FB", alpha: 0.3), radius: 10, x: -8, y: 5)
//            .shadow(color: Color(hex: "AABBC9", alpha: 0.8), radius: 10, x: 2, y: 9)
    }
}
