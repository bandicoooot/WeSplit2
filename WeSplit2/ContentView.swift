//
//  ContentView.swift
//  WeSplit2
//
//  Created by Mahdi Lashgari on 13.06.26.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var NumberOfVolsk = 2
    @State private var Tipppercentage = 20
    @FocusState private var amountIsFocused: Bool
    let Tipppercentages = [10, 15, 20, 25, 0]
    var totalPerPerson: Double{
        //calculate
        let pepoleCount = Double(NumberOfVolsk + 2)
        let TippWählen = Double(Tipppercentage)
        
        let tippKalkulation = checkAmount / 100 * TippWählen
        let total = checkAmount + tippKalkulation
        let anteil = total / pepoleCount
        
        return anteil
    }
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("number of pepole", selection: $NumberOfVolsk) {
                        ForEach(2..<100) {
                            Text("\($0) pepole")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section("wie viel würdest du Tippen?"){
                    Picker("Tipp percentages", selection: $Tipppercentage){
                        ForEach(Tipppercentages, id: \.self) {
                            Text($0, format: .percent)
                            
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section{
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency? .identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
        }
        }

    }
 

#Preview {
    ContentView()
}
