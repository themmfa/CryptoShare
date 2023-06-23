//
//  CustomButton.swift
//  CryptoShare
//
//  Created by fe on 23.06.2023.
//

import SwiftUI

struct CustomButton: View {
    var action: () -> Void
    var label: String
    var isDisabled: Bool

    var body: some View {
        Button(action: action) {
            Text(label)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(isDisabled ? Color.gray : Color.black)
                .cornerRadius(10)
        }
        .disabled(isDisabled)
        .padding()
    }
}

struct CustomButton_Previews: PreviewProvider {
    @State static var disabled = false
    static var previews: some View {
        CustomButton(action: {}, label: "Deneme", isDisabled: false)
    }
}
