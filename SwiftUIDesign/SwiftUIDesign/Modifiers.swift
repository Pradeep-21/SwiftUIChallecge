//
//  Modifiers.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 29/12/21.
//

import Foundation
import SwiftUI

struct PlaceholderStyle: ViewModifier {
    
    var isTextEmpty: Bool
    var placeholder: String
    var color: Color
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if isTextEmpty {
                Text(placeholder)
                    .foregroundColor(color)
            }
            content   // Only return the content view without changing the rendering view
        }
    }
}

struct ClearButton: ViewModifier {
    
    @Binding var text: String
    
    public func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            content
            
            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "multiply.circle")
                        .foregroundColor(Color(UIColor.opaqueSeparator))
                }
                .padding(.trailing, 8)
            }
        }
    }
    
}

extension View {
    
    func placeHolder(isShow: Bool, placeHolder: String, color: Color) -> some View {
        modifier(PlaceholderStyle(isTextEmpty: isShow, placeholder: placeHolder, color: color))
    }
    
    func clearButton(text: Binding<String>) -> some View {
        modifier(ClearButton(text: text))
    }
    
}
