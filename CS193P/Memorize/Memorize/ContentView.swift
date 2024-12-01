//
//  ContentView.swift
//  Memorize
//
//  Created by Zikang Xu on 2024-11-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceup: true)
            CardView(isFaceup: true)
            CardView(isFaceup: true)
            CardView(isFaceup: false)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceup: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceup {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 5)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
