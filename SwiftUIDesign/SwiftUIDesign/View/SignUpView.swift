//
//  SignUpView.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 29/12/21.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var signUpVM = SignUpViewModel()
    
    var body: some View {
        ZStack {
            Color.stDarkBlue
                .ignoresSafeArea()
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        Spacer()
                            .frame(height: 50)
                        Group {
                            HStack {
                                Text("Hello...!")
                                    .font(Font.custom("DancingScript-Bold", size: 55))
                                    .foregroundColor(.stCustomWhite)
                                    .padding(.leading, 25)
                                Spacer()
                            }
                            Spacer()
                                .frame(height: 60)
                        }
                        Group {
                            EntryFiled(placeHolder: "First name", backgroundColor: .stLightBlue, text: $signUpVM.firstName)
                            EntryFiled(placeHolder: "Last name", backgroundColor: .stLightBlue, text: $signUpVM.lastName)
                            EntryFiled(placeHolder: "Email", backgroundColor: .stLightBlue, text: $signUpVM.email)
                            PickerTextField(text: $signUpVM.phoneNumber, placeholder: "Phone")
                            EntryFiled(placeHolder: "Select Center", backgroundColor: .stLightBlue, text: $signUpVM.center)
                            Spacer()
                                .frame(height: 25)
                            CustomButton(text: "Signup", icon: nil, color: .stLightOrange, radiuds: 30) {
                                //
                            }
                        }
                        Spacer()
                        Group {
                            HStack {
                                Text("Already Have An Account?")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Button {
                                    //
                                } label: {
                                    Text("Login")
                                        .foregroundColor(.stLightOrange)
                                        .fontWeight(.bold)
                                }
                            }
                        }
                        .navigationBarTitleDisplayMode(.inline)
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            CustomCircle(color: .stLightOrange, xOffset: -220, yOffset: 400, width: 150, height: 200)
            CustomCircle(color: .stLightYellow, xOffset: 230, yOffset: 430, width: 150, height: 120)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
