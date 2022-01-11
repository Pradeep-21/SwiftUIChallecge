//
//  new.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 29/12/21.
//

import SwiftUI

struct CircleWithEllipse: View {
    
    var xOffset: CGFloat
    var yOffset: CGFloat
    var xOffsetRight: Bool
    var ellipseColor: Color
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .offset(x: xOffset, y: yOffset)
                .fill(ellipseColor)
                .frame(width: width, height: height)
        }
        .background(xOffsetRight ? Color.stCustomWhite : Color.stLightYellow)
        .cornerRadius(height / 2)
    }
    
}

struct EntryFiled: View {
    @FocusState private var focus: String?
    
    var placeHolder: String
    var backgroundColor: Color
    @Binding var text: String
    
    var body: some View {
        TextField("", text: $text)
            .font(.oswald(size: 20))
            .placeHolder(isShow: text.isEmpty, placeHolder: placeHolder, color: .stCustomWhite)
            .padding()
            .padding(.leading, 10)
            .frame(width: kWidth - 50, height: 55)
            .background(backgroundColor)
            .cornerRadius(27)
            .foregroundColor(.stCustomWhite)
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
        Spacer()
            .frame(height: 25)
    }
    
    private func endediting() {
        focus = nil
    }
    
}

struct PasswordTextFiled: View {
    
    @Binding var text: String
    var placeHolder: String
    
    var body: some View {
        SecureField("", text: $text)
            .font(.oswald(size: 25))
            .placeHolder(isShow: text.isEmpty, placeHolder: placeHolder, color: .stCustomWhite)
            .padding()
            .padding(.leading, 10)
            .frame(width: kWidth - 50, height: 55)
            .background(Color.stLightBlue)
            .foregroundColor(.stCustomWhite)
            .cornerRadius(27)
            .disableAutocorrection(true)
            .textInputAutocapitalization(.never)
        Spacer()
            .frame(height: 25)
    }
    
}

struct CircleDesign: View {
    
    var body: some View {
        Group {
            CustomCircle(color: .stLightYellow, xOffset: -190, yOffset: -395, width: 330, height: 300)
            
            CustomRectangle(color: .stDarkBlue, xOffset: -35, yOffset: -450, width: 130, height: 140)
            
            CustomCircle(color: .stLightGreen, xOffset: -35, yOffset: -305, width: 130, height: 120)
            
            CustomCircle(color: .stLightOrange, xOffset: -35, yOffset: -400, width: 160, height: 140)
           
            CustomCircle(color: .stLightPink, xOffset: 135, yOffset: -430, width: 250, height: 200)
            
            CustomCircle(color: .stLightOrange, xOffset: -180, yOffset: -200, width: 160, height: 140)
            
            CustomCircle(color: .stDarkBlue, xOffset: -90, yOffset: -195, width: 200, height: 80)
            
            CircleWithEllipse(xOffset: 60, yOffset: 60, xOffsetRight: true, ellipseColor: .stLightGreen, width: 140, height: 140)
                .offset(x: 65, y: -205)
            
            CircleWithEllipse(xOffset: -60, yOffset: 60, xOffsetRight: false, ellipseColor: .stLightGreen, width: 140, height: 140)
                .offset(x: 205, y: -205)
            
            CustomCircle(color: .stLightGreen, xOffset: 130, yOffset: -300, width: 200, height: 175)
        }
    }
    
}

struct CustomCircle: View {
    
    var color: Color
    var xOffset: CGFloat
    var yOffset: CGFloat
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        Circle()
            .fill(color)
            .offset(x: xOffset, y: yOffset)
            .frame(width: width, height: height)
    }
    
}

struct CustomRectangle: View {
    
    var color: Color
    var xOffset: CGFloat
    var yOffset: CGFloat
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        Rectangle()
            .fill(color)
            .offset(x: xOffset, y: yOffset)
            .frame(width: width, height: height)
    }
    
}

struct SignUpCircleView: View {
    
    var body: some View {
        Circle()
            .fill(Color.stLightOrange)
            .offset(x: -220, y: 400)
            .frame(width: 150, height: 200)
        Circle()
            .fill(Color.stLightYellow)
            .offset(x: 200, y: 430)
            .frame(width: 150, height: 120)
    }
    
}

struct PickerTextField: View {
    
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
                .font(.oswald(size: 20))
                .placeHolder(isShow: text.isEmpty, placeHolder: placeholder, color: .stCustomWhite)
                .padding()
                .padding(.leading, 100)
                .frame(width: kWidth - 50, height: 55)
                .foregroundColor(.stCustomWhite)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .background(Color.stLightBlue)
                .cornerRadius(27)
            Button {
                //
            } label: {
                Text("+91")
                    .foregroundColor(.stCustomWhite)
                    .frame(width: 90, height: 55)
                    .background(Color.stLightLowBlue)
                    .cornerRadius(27)
            }
        }
        Spacer()
            .frame(height: 25)
    }
    
}

struct CustomButton: View {
    var text: String
    var icon: Image?
    var color: Color
    var radiuds: CGFloat
    var clicked: (() -> Void) /// use closure for callback
    
    var body: some View {
        Button(action: clicked) { /// call the closure here
            HStack {
                Text(text) /// your text
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                icon /// your icon image
            }
            .frame(width: 150, height: 60)
            .background(color)
            .cornerRadius(radiuds)
        }
    }
}
