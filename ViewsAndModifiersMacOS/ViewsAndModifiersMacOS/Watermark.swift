//
//  Watermark.swift
//  ViewsAndModifiersMacOS
//
//  Created by Brandon Johns on 1/3/24.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

#Preview {
    Watermark(text: "Hello World") as! any View
}
