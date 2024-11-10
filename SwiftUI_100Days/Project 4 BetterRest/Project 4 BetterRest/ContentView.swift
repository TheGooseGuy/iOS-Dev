//
//  ContentView.swift
//  Project 4 BetterRest
//
//  Created by Zikang Xu on 2024-11-10.
//

import SwiftUI

func exampleDates() {
    let tomorrow = Date.now.addingTimeInterval(86400)
    
    let range = Date.now...tomorrow
}

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
