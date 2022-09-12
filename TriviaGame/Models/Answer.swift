//
//  Answer.swift
//  TriviaGame
//
//  Created by Maciej on 12/09/2022.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
