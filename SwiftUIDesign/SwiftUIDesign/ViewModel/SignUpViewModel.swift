//
//  SignUpViewModel.swift
//  SwiftUIDesign
//
//  Created by Pradeep Selvaraj on 29/12/21.
//

import Foundation

class SignUpViewModel: ObservableObject {
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var phoneNumber: String = ""
    @Published var center: String = ""
    
    
    func signUp() {
        //
    }
    
}
