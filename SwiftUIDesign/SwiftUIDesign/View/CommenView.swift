//
//  new.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 29/12/21.
//

import SwiftUI

struct CircleWithEllipse: View {
    
    var xOffsetRight: Bool
    var mainColor: Color
    var offColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .fill(mainColor)
                .frame(width: 140, height: 140, alignment: .center)
            Circle()
                .offset(x: xOffsetRight ? 60 : -60, y: 60)
                .fill(offColor)
                .frame(width: 140, height: 140)
        }
        .cornerRadius(70)
    }
}

struct EntryFiled: View {
    
    var placeHolder: String
    var backgroundColor: Color
    @Binding var text: String
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .placeHolder(isShow: text.isEmpty, placeHolder: placeHolder, color: .stCustomWhite)
            .padding()
            .padding(.leading, 10)
            .frame(width: kWidth - 50)
            .background(backgroundColor)
            .cornerRadius(30)
            .foregroundColor(.stCustomWhite)
            .textInputAutocapitalization(.never)
//            .clearButton(text: $text)
        Spacer()
            .frame(height: 20)
    }
    
}

struct PasswordTextFiled: View {
    
    @Binding var text: String
    var placeHolder: String
    
    var body: some View {
        SecureField(placeHolder, text: $text)
            .placeHolder(isShow: text.isEmpty, placeHolder: placeHolder, color: .stCustomWhite)
            .padding()
            .padding(.leading, 10)
            .frame(width: kWidth - 50)
            .background(Color.stLightBlue)
            .foregroundColor(.stCustomWhite)
            .cornerRadius(30)
//            .clearButton(text: $text)
        Spacer()
            .frame(height: 20)
    }
    
}

struct CircleDesign: View {
    
    var body: some View {
        Group {
            Circle()
                .fill(Color.stLightYellow)
                .offset(x: -190, y: -395)
                .frame(width: 330, height: 300)
            Rectangle()
                .fill(Color.stDarkBlue)
                .offset(x: -35, y: -450)
                .frame(width: 130, height: 140)
            Circle()
                .fill(Color.stLightGreen)
                .offset(x: -35, y: -305)
                .frame(width: 130, height: 120)
            Circle()
                .fill(Color.stLightOrange)
                .offset(x: -35, y: -400)
                .frame(width: 160, height: 140)
            Circle()
                .fill(Color.stLightPink)
                .offset(x: 135, y: -430)
                .frame(width: 250, height: 200)
            Circle()
                .fill(Color.stLightOrange)
                .offset(x: -180, y: -200)
                .frame(width: 160, height: 140)
            Circle()
                .fill(Color.stDarkBlue)
                .offset(x: -90, y: -195)
                .frame(width: 200, height: 80)
            CircleWithEllipse(xOffsetRight: true, mainColor: .stCustomWhite, offColor: .stLightGreen)
                .offset(x: 70, y: -205)
            CircleWithEllipse(xOffsetRight: false, mainColor: .stLightYellow, offColor: .stLightGreen)
                .offset(x: 205, y: -205)
            Circle()
                .fill(Color.stLightGreen)
                .offset(x: 130, y: -300)
                .frame(width: 200, height: 175)
        }
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
            .offset(x: 220, y: 400)
            .frame(width: 150, height: 120)
    }
    
}

struct PickerTextField: View {
    
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            TextField(placeholder, text: $text)
                .placeHolder(isShow: text.isEmpty, placeHolder: placeholder, color: .stCustomWhite)
                .padding()
                .padding(.leading, 90)
                .frame(width: kWidth - 50)
                .foregroundColor(.stCustomWhite)
                .textInputAutocapitalization(.never)
                .background(Color.stLightBlue)
                .cornerRadius(30)
            Button {
                //
            } label: {
                Text("+91")
                    .foregroundColor(.white)
                    .frame(width: 80, height: 57)
                    .background(Color.stLightLowBlue)
                    .cornerRadius(28)
            }
        }
        Spacer()
            .frame(height: 20)
    }
    
}
