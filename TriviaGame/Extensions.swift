//
//  Extensions.swift
//  TriviaGame
//
//  Created by Maciej on 12/09/2022.
//

import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.accentColor)
    }
}
