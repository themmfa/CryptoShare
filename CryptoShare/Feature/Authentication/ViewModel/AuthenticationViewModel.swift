//
//  AuthenticationViewModel.swift
//  CryptoShare
//
//  Created by fe on 23.06.2023.
//

import Foundation

class AuthenticationViewModel: ObservableObject {
    func isLoginButtonDisabled(_ email: String, _ password: String) -> Bool {
        if email.isEmpty || password.isEmpty {
            return true
        }
        return false
    }
}
