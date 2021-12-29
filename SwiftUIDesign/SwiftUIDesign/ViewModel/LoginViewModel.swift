//
//  LoginViewModel.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 29/12/21.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isSignUp: Bool = false
    @Published var isLogin: Bool = false
    
    func login() {
        //
    }
    
}
