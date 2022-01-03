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
                    Group {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Welcome")
                                    .font(.custom("DancingScript-Bold", size: 55.0))
                                    .foregroundColor(.white)
                                Spacer()
                                    .frame(height: 5)
                                Text("Back")
                                    .font(.custom("DancingScript-Bold", size: 55.0))
                                    .foregroundColor(.white)
                            }
                            .padding(.leading, 35)
                            Spacer()
                        }
                    }
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
                                    .font(.system(size: 20, weight: .semibold, design: .default))
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
                            Text("New User?")
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
                                        .font(.system(size: 22, weight: .semibold, design: .default))
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


