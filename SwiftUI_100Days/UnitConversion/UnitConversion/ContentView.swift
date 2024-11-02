//
//  ContentView.swift
//  UnitConversion
//
//  Created by Zikang Xu on 2024-10-29.
//

import SwiftUI


struct ContentView: View {
    let unitType = ["temp.", "length", "time", "volume", "weight"]
    let unitDictionary: [String: [String]] = [
        "temperature": ["celsius", "fahrenheit"],
        "length": ["centimeter", "meter", "kilometer", "feet", "yard", "mile", "inch"],
        "time": ["second", "minute", "hour", "day", "week", "month"],
        "volume": ["milliliter", "liter", "gallon", "cup"],
        "weight": ["gram", "kilogram", "pound", "ounce"]
    ]
    
    // Length
    let in_to_cm: Double = 2.54
    let ft_to_cm: Double = 30.48
    let yd_to_cm: Double = 91.44
    let m_to_cm: Double = 100
    let mi_to_cm: Double = 160_934
    let km_to_cm: Double = 100_000
    // convert these to dictionaries, and use switch/dictioanry to get doubles
    // Time
    let minute_to_second: Double = 60
    let hour_to_second: Double = 3_600
    let day_to_second: Double = 86_400
    let week_to_second: Double = 604_800
    let month_to_second: Double = 2_592_000
    
    // Volume
    let l_to_ml: Double = 1_000
    let g_to_ml: Double = 4_546.09
    let c_to_ml: Double = 240
    
    // Weight
    let kg_to_g: Double = 1_000
    let lb_to_g: Double = 453.592
    let oz_to_g: Double = 28.3495
    
    @State private var selected_unit: String = "temp."
    @State private var selected_input_type: String = "temperature"
    @State private var selected_output_type: String = "temperature"
    @State private var input_value: Double = 0
    
    @FocusState private var amount_is_focused: Bool
    
    var goal :(String, String, String) {
        (selected_unit, selected_input_type, selected_output_type)
    }
    
    var output: Double {
        let cm: Double  // A temporary variable to store the value in centimeters
        let s: Double   // A temporary variable to store the value in second
        let ml: Double  // A temporary variable to store the value in millilitre
        let g: Double   // A temporary variable to store the value in grams
        switch goal {
            // Temperature conversions
        case ("temp.", "celsius", "fahrenheit"):
            return input_value * 9 / 5 + 32
        case ("temp.", "fahrenheit", "celsius"):
            return (input_value - 32) * 5 / 9
            
            // Length conversions
        case ("length", let from, let to):
            // Convert input to centimeters
            switch from {
            case "inch": cm = input_value * in_to_cm
            case "feet": cm = input_value * ft_to_cm
            case "yard": cm = input_value * yd_to_cm
            case "meter": cm = input_value * m_to_cm
            case "mile": cm = input_value * mi_to_cm
            case "kilometer": cm = input_value * km_to_cm
            case "centimeter": cm = input_value  // Already in centimeters
            default: return input_value  // Return as is unknown unit
            }
            
            // Convert from centimeters to the target unit
            switch to {
            case "inch": return cm / in_to_cm
            case "feet": return cm / ft_to_cm
            case "yard": return cm / yd_to_cm
            case "meter": return cm / m_to_cm
            case "mile": return cm / mi_to_cm
            case "kilometer": return cm / km_to_cm
            case "centimeter": return cm
            default: return input_value  // Return as is if unknown unit
            }
            
            // Time conversions
        case ("time", let from, let to):
            // Convert input to seconds
            switch from {
                case "minute": s = input_value * minute_to_second
                case "hour": s = input_value * hour_to_second
                case "day": s = input_value * day_to_second
                case "week": s = input_value * week_to_second
                case "month": s = input_value * month_to_second
                
                case "second": s = input_value // Already in seconds
                default: return input_value // Return as unkown unit
            }
            switch to {
                case "minute": return s / minute_to_second
                case "hour": return s / hour_to_second
                case "day": return s / day_to_second
                case "week": return s / week_to_second
                case "month": return s / month_to_second
                
                case "second": return s
                default: return input_value
            }
            
            // Volume Conversions
        case ("volume", let from, let to):
            // Convert input to milliliters
            switch from {
                case "liter": ml = input_value * l_to_ml
                case "gallon": ml = input_value * g_to_ml
                case "cup": ml = input_value * c_to_ml
                
                case "milliliter": ml = input_value // Already in milliliter
                default: return input_value // Return as unknown unit
            }
            switch to {
                case "liter": return ml / l_to_ml
                case "gallon": return ml / g_to_ml
                case "cup": return ml / c_to_ml
                case "milliliter": return ml
                default: return input_value
            }
            
        case ("weight", let from, let to):
            // Convert input to grams
            switch from {
                case "kilogram": g = input_value * kg_to_g
                case "pound": g = input_value * lb_to_g
                case "ounce": g = input_value * oz_to_g
                
                case "gram": g = input_value
                default: return input_value
            }
            switch to {
                case "kilogram": return g / kg_to_g
                case "pound": return g / lb_to_g
                case "ounce": return g / oz_to_g
                case "gram": return g
            default: return input_value
            }
        default:
            return input_value  // If no conversion is matched, return input as-is
        }
    }

    
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("What unit do you want to convert?")) {
                    Picker("Unit Type:", selection:$selected_unit) {
                        ForEach(unitType, id: \.self) { type in
                            Text(type.capitalized)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Input Value")) {
                    Picker("From Unit: ", selection:$selected_input_type) {
                        ForEach(unitDictionary[selected_unit] ?? ["celsius", "fahrenheit"], id: \.self) { unit in
                            Text("\(unit.capitalized)")
                        }
                    }
                    TextField("Input value:", value: $input_value, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amount_is_focused)
                }
                Section(header: Text("Converted Value")) {
                    Picker("To Unit: ", selection:$selected_output_type) {
                        ForEach(unitDictionary[selected_unit] ?? ["celsius", "fahrenheit"], id: \.self) { unit in
                            Text("\(unit.capitalized)")
                        }
                    }
                    Text(output, format: .number)
                        .font(.title2)
                }
            }
            .navigationTitle("Unit Converter")
            .toolbar {
                if amount_is_focused {
                    Button("Done") {
                        amount_is_focused = false
                    }
                }
            }
            
        }
    }
}
#Preview {
    ContentView()
}
