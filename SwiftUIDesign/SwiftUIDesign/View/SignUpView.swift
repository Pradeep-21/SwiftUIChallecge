//
//  SignUpView.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 29/12/21.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var signUpVM = SignUpViewModel()
    
    @State private var name: String = ""
    
    var body: some View {
        ZStack {
            Color.stDarkBlue
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: 50)
                HStack {
                    Text("Hello...!")
                        .font(Font.custom("DancingScript-Bold", size: 55))
                        .foregroundColor(.stCustomWhite)
                        .padding(.leading, 25)
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                Group {
                    EntryFiled(placeHolder: "First name", backgroundColor: .stLightBlue, text: $signUpVM.firstName)
                    EntryFiled(placeHolder: "Last name", backgroundColor: .stLightBlue, text: $signUpVM.lastName)
                    EntryFiled(placeHolder: "Email", backgroundColor: .stLightBlue, text: $signUpVM.email)
                    PickerTextField(text: $signUpVM.phoneNumber, placeholder: "Phone")
                    EntryFiled(placeHolder: "Select Center", backgroundColor: .stLightBlue, text: $signUpVM.center)
                    Spacer()
                        .frame(height: 25)
                    Button {
                        //
                    } label: {
                        Text("SignUp")
                            .fontWeight(.bold)
                            .padding()
                            .frame(width: 150)
                            .background(Color.stLightOrange)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                    }
                }
                Spacer()
                Group {
                    HStack {
                        Text("Already Have An Account?")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Spacer()
                            .frame(width: 5)
                        Button {
                            //
                        } label: {
                            Text("Login")
                                .foregroundColor(.stLightOrange)
                                .fontWeight(.bold)
                        }
                        
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            SignUpCircleView()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
