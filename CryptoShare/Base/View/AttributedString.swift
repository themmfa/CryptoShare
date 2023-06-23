//
//  AttributedString.swift
//  CryptoShare
//
//  Created by fe on 23.06.2023.
//

import SwiftUI
import UIKit

struct AttributedString: View {
    var firstPart: String
    var secondPart: String

    var body: some View {
        HStack {
            Text(firstPart)
                .font(.headline)
                .foregroundColor(.gray)
                +
                Text(secondPart)
                .font(.headline)
                .foregroundColor(.black)
        }
    }
}

struct AttributedString_Previews: PreviewProvider {
    static var previews: some View {
        AttributedString(firstPart: "You have account?", secondPart: " Go to Register")
    }
}
