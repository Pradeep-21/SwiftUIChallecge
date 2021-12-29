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
                                    .fontWeight(.bold)
                                    .padding(.trailing, 25)
                                    .foregroundColor(.white)
                            }
                        }
                        Spacer()
                            .frame(height: 25)
                        NavigationLink(isActive: $loginVM.isLogin) {
                            Text("Login")
                        } label: {
                            Button {
                                //
                            } label: {
                                Text("Login")
                                    .fontWeight(.semibold)
                                    .padding()
                                    .frame(width: 150)
                                    .background(Color.stLightOrange)
                                    .foregroundColor(.white)
                                    .cornerRadius(30)
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
                                    Text("SignUp")
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


