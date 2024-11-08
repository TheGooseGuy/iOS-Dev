//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Zikang Xu on 2024-11-02.
//

import SwiftUI


struct ContentView: View {
    @State private var countries  = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "UKraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score:Int = 0
    @State private var tappedFlag:Int = 0
    @State private var questionNumber:Int = 0
    @State private var showingGameOver:Bool = false
    @State private var gameOverTitle:String = ""
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                VStack(spacing: 15) {
                    Text("Tap the flag of")
                        .font(.subheadline.weight(.heavy))
                        .font(.largeTitle.weight(.semibold))
                    Text(countries[correctAnswer])
                    
                        .padding()
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQeustion)
        } message: {
            if scoreTitle == "Correct" {
                Text("Correct! Your score is \(score)")
            } else {
                Text("Wrong!, That's the flag of \(countries[tappedFlag]).")
                Text("Your score is \(score)")
            }
        }
        .alert(gameOverTitle, isPresented: $showingGameOver) {
            Button("Play Again", action: askQeustion)
        } message: {
            Text("Game Over! Your score is \(score)")
        }
    }

    func flagTapped(_ number: Int) {
        questionNumber += 1
        tappedFlag = number
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
        if questionNumber >= 8 {
            showingGameOver = true
            gameOverTitle = "Game Over!"
        }
    }
    
    func askQeustion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        if questionNumber >= 8 {
            questionNumber = 0
            score = 0
        }
    }
}
    
#Preview {
    ContentView()
}
