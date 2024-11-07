//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Zikang Xu on 2024-11-06.
//

import SwiftUI

struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 34, weight: .bold, design: .default)) // Large, bold font
            .foregroundColor(.blue) // Blue color
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TitleStyle())
    }
}


struct ContentView: View {
    @State private var useRedText: Bool = false
    var body: some View {
        VStack {
            Text("The Title")
                .titleStyle() // Apply the custom title style
            Text("Text")
        }
    }
        
}

#Preview {
    ContentView()
}
