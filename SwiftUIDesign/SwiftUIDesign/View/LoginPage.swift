//
//  LoginPage.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 25/12/21.
//

import SwiftUI

let kWidth = UIScreen.main.bounds.size.width
let kHeight = UIScreen.main.bounds.size.height

struct LoginView: View {
    
    @StateObject var loginVM = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ZStack() {
                Color.stBackgroundBlue
                    .ignoresSafeArea()
                CircleDesign()
                VStack {
                    Spacer()
                    VStack(spacing: 0) {
                        Text("Welcome")
                            .padding(.bottom,0)
                            .font(.pacifico(size: 45))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 30)
                        Text("Back")
                            .padding(.top,0)
                            .font(.pacifico(size: 45))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.leading, 25)
                    Group {
                        Spacer()
                            .frame(height: 25)
                        EntryFiled(placeHolder: "Email", backgroundColor: .stLightBlue, text: $loginVM.email)
                        PasswordTextFiled(text: $loginVM.password, placeHolder: "Password")
                        HStack {
                            Spacer()
                            Button {
                                //
                            } label: {
                                Text("Forgot password?")
                                    .font(.custom("Oswald-Regular", size: 20.0))
                                    .padding(.trailing, 25)
                                    .foregroundColor(.white)
                            }
                        }
                        Spacer()
                            .frame(height: 25)
                        NavigationLink(isActive: $loginVM.isLogin) {
                            Text("Login")
                        } label: {
                            CustomButton(text: "Login", icon: nil, color: .stLightOrange, radiuds: 30) {
                                //
                            }
                        }
                        Spacer()
                            .frame(height: 25)
                    }
                    Group {
                        HStack {
                            Text("New User ?")
                                .font(.custom("Oswald-Regular", size: 18.0))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                                .frame(width: 5)
                            NavigationLink(isActive: $loginVM.isSignUp) {
                                SignUpView()
                            } label: {
                                Button {
                                    loginVM.isSignUp = true
                                } label: {
                                    Text("Signup")
                                        .font(.custom("Oswald-Regular", size: 22.0))
                                        .foregroundColor(.stLightOrange)
                                        .fontWeight(.bold)
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


