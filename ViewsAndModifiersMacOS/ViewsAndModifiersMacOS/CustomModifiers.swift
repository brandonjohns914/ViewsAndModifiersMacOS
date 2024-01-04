//
//  CustomModifiers.swift
//  ViewsAndModifiersMacOS
//
//  Created by Brandon Johns on 1/3/24.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}
struct CustomModifiers: View {
    var body: some View {
        Text("Hello, World!")
            .titleStyle()
            .frame(width: 300, height: 300)
            .watermarked(with: "Brandon Johns")
            //.modifier(Title())
    }
}

#Preview {
    CustomModifiers()
}
