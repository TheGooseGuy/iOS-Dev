//
//  ContentView.swift
//  Memorize
//
//  Created by Zikang Xu on 2024-11-30.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "🎃", "🕷️", "😈", "💀", "🎮", "💵", "🫠"]
    
    var body: some View {
        Text("Memorize Game")
            .font(.title)
        ScrollView {
            cards
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    let content: String
    @State private var isFaceup = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 5)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceup ? 1 : 0)
            base.fill().opacity(isFaceup ? 0 : 1)
            
        }
        .onTapGesture {
            isFaceup.toggle()
        }
    }
}

#Preview {
    ContentView()
}
