//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Maciej on 12/09/2022.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaService: TriviaService
    
    var body: some View {
        if triviaService.reachedEnd {
            VStack(spacing: 20) {
                Text("Trvia Game")
                    .lilacTitle()
                
                Text("Congratulations, you completed the game! 🥳")
                
                Text("You scored \(triviaService.score) out of \(triviaService.length)")
                
                Button {
                    Task.init {
                        await triviaService.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }

            }
            .foregroundColor(.accentColor)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        } else {
            QuestionView()
                .environmentObject(triviaService)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaService())
    }
}
