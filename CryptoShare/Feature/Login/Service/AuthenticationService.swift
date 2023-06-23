//
//  ApiService.swift
//  CryptoShare
//
//  Created by fe on 23.06.2023.
//

import Firebase
import Foundation

class AuthenticationService {
    /// Login with email
    func loginWithEmail(email: String, password: String, completion: @escaping (AuthDataResult?, Error?) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password, completion: completion)
    }
}
