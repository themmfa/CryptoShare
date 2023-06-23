//
//  Login.swift
//  CryptoShare
//
//  Created by fe on 23.06.2023.
//

import SwiftUI

struct Login: View {
    @State var email: String = ""
    @State var password: String = ""

    var authenticationViewModel: AuthenticationViewModel

    init(authenticationViewModel: AuthenticationViewModel) {
        self.authenticationViewModel = authenticationViewModel
    }

    var body: some View {
        VStack(spacing: 8) {
            CustomUserInput(text: $email, title: "Email", placeholder: "Enter your email")
            CustomUserInput(text: $password, title: "Password", placeholder: "Enter your password")
            CustomButton(action: {}, label: "Login", isDisabled: authenticationViewModel.isButtonDisabled(email, password))
        }
        Spacer()
        Text("DENEMESDF")
    }
}

struct Login_Previews: PreviewProvider {
    static var vm = AuthenticationViewModel()
    static var previews: some View {
        Login(authenticationViewModel: vm)
    }
}
