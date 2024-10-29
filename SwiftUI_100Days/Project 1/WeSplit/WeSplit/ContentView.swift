//
//  ContentView.swift
//  WeSplit
//
//  Created by Zikang Xu on 2024-10-28.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused: Bool
    let tipPercentages = [10, 15, 20, 25, 0]
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    var totalAmountChecked: Double {
        return checkAmount + checkAmount * Double(tipPercentage) / 100
    }
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.numberPad)
                        .focused($amountIsFocused)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                    .toolbar {
                        if amountIsFocused {
                            Button("Done") {
                                amountIsFocused = false
                            }
                        }
                    }
                    Section {
                        Picker("Tip percentage", selection: $tipPercentage) {
                            ForEach(0..<101) {
                                Text($0, format: .percent)
                            }
                        }
                        .pickerStyle(.navigationLink)
                    } header: {
                        Text("How much tip do you want to leave?")
                    }
                    Section("Amount per person") {
                        Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    }
                    Section("Total amount for check") {
                        Text(totalAmountChecked, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    }
                    .navigationTitle("WeSplit")
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
