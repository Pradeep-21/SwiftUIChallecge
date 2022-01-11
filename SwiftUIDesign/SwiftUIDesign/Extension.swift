//
//  Extension.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 25/12/21.
//

import Foundation
import SwiftUI


extension Color {
    static let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    static let stBackgroundBlue = Color("backgroundBlue")
    static let stCustomWhite = Color("customWhite")
    static let stDarkBlue = Color("darkBlue")
    static let stDarkOrange = Color("darkOrange")
    static let stLightGreen = Color("lightGreen")
    static let stLightOrange = Color("lightOrange")
    static let stLightPink = Color("lightPink")
    static let stLightYellow = Color("lightYellow")
    static let stLightBlue = Color("lightBlue")
    static let stLightLowBlue = Color("lightLowBlue")
}

extension Font {
    
    static var dancingFontBold: Font {
        return Font.custom("Pacifico-Regular", size: 55)
    }
    
    static func pacifico(size: CGFloat) -> Font {
        return Font.custom("Pacifico-Regular", size: size)
    }
    
    static func oswald(size: CGFloat) -> Font {
        return Font.custom("Oswald-Regular", size: size)
    }
    
    static var oswald: Font {
        return Font.custom("Oswald-Regular", size: 16)
    }
    
    static func lato(size: CGFloat) -> Font {
        return Font.custom("Lato-Bold", size: size)
    }
}
