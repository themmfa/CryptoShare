//
//  CustomUserInput.swift
//  CryptoShare
//
//  Created by fe on 23.06.2023.
//

import SwiftUI

struct CustomUserInput: View {
    private let vstackSpacing: CGFloat = 4

    @Binding var text: String
    var title: String
    var placeholder: String

    var body: some View {
        VStack(alignment: .leading, spacing: vstackSpacing) {
            Text(title)
                .font(.title2)

            TextField(placeholder, text: $text)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .tint(.black)
                .textInputAutocapitalization(TextInputAutocapitalization.never)
                .autocorrectionDisabled()
        }
        .padding([.leading, .trailing], 16)
    }
}

struct CustomUserInput_Previews: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        CustomUserInput(text: $text, title: "Deneme", placeholder: "Deneme")
    }
}
