//
//  FontModifier.swift
//  Musik
//
//  Created by Arijit Vishwakarma on 24/07/25.
//
import SwiftUI

enum LatoFontType: String {
    case regular = "Lato-Regular"
    case semibold = "Lato-Semibold"
    case bold = "Lato-Bold"
    case black = "Lato-Black"
}

struct FontModifier: ViewModifier {
    
    var type: LatoFontType, size: CGFloat
    
    init(_ type: LatoFontType = .regular, size: CGFloat = 16) {
        self.type = type
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content.font(Font.custom(type.rawValue, size: size))
    }
}
