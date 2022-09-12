//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Maciej on 12/09/2022.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaService: TriviaService
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                
                Spacer()
                
                Text("\(triviaService.index + 1) out of \(triviaService.length)")
                    .foregroundColor(.accentColor)
            }
            
            ProgressBar(progress: triviaService.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaService.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaService.answerChoices) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaService)
                }
            }
            
            Button {
                triviaService.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaService.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .disabled(!triviaService.answerSelected)

            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaService())
    }
}
