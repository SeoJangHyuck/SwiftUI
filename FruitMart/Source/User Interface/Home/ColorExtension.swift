//
//  ColorExtension.swift
//  FruitMart
//
//  Created by Seo JangHyuck on 2020/08/02.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI

extension Color{
    // SwiftUI에서는 Color 타입을 #abcdef 같은 형태로 이용할 수 없기 때문에 변환기능 생성
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 16) & 0xFF) / 255.0
        let b = Double((rgb >> 16) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
    static let peach = Color("peach")
    static let primaryShadow = Color.primary.opacity(0.2)
    static let secondaryText = Color(hex: "#6e6e6e")
    static let background = Color(UIColor.systemGray6)
}
