//
//  CryptoShareApp.swift
//  CryptoShare
//
//  Created by fe on 23.06.2023.
//

import SwiftUI

@main
struct CryptoShareApp: App {
    var authenticationViewModel = AuthenticationViewModel()
    var body: some Scene {
        WindowGroup {
            Login(authenticationViewModel: authenticationViewModel)
        }
    }
}
