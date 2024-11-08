//
//  ContentView.swift
//  Rock, Paper, Scissors
//
//  Created by Zikang Xu on 2024-11-07.
//

import SwiftUI
var moves: [String] = ["Rock", "Paper", "Scissors"]
var movesDict: [String: String] = ["Rock": "🍎", "Paper": "💵", "Scissors": "✂️"]
struct ContentView: View {
    @State private var opponentChoice: String = ""
    @State private var currentChoice: String = ""
    @State private var winOrLose: String = ""
    var body: some View {
        VStack {
            Text("Rock, Paper & Scissors")
                .font(.title.weight(.bold))
                .padding()
            Form {
                Section(header: Text("Question")) {
                    opponentChoice = moves[Int.random(in: 0...2)]
                    VStack {
                        HStack {
                            Text("Your Oppoment Choose: ")
                                .padding()
                            Text(opponentChoice)
                                .fontWeight(.bold)
                            Text(movesDict[opponentChoice] ?? "")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
