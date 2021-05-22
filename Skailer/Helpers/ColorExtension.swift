//
//  ColorExtension.swift
//  Skailer
//
//  Created by Sameer Nawaz on 22/05/21.
//

import SwiftUI

extension Color {
    
    static let primary_color = Color("EFF0F9_282C31")
    static let main_color = Color(hex: "657592")
    static let main_white = Color("657592_F4F4F4")
    
    static let text_header = Color("333333_F4F4F4")
    static let text_primary = Color("657592_C6CBDA")
    static let text_primary_f1 = Color.text_primary.opacity(0.8)
    
    static let disc_line = Color("666666_F4F4F4")
    
    init(hex: String, alpha: Double = 1) {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) { cString.remove(at: cString.startIndex) }
        
        let scanner = Scanner(string: cString)
        scanner.currentIndex = scanner.string.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        self.init(.sRGB, red: Double(r) / 0xff, green: Double(g) / 0xff, blue:  Double(b) / 0xff, opacity: alpha)
    }
}
