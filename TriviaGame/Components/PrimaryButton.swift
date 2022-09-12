//
//  PrimaryButton.swift
//  TriviaGame
//
//  Created by Maciej on 12/09/2022.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background = Color.accentColor
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}
