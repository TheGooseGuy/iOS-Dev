//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Zikang Xu on 2024-11-06.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText: Bool = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Hello World!") {
                useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red: .blue)
        }
    }
        
}

#Preview {
    ContentView()
}
