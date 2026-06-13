//
//  ContentView.swift
//  WeSplit2
//
//  Created by Mahdi Lashgari on 13.06.26.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    var body: some View {
        Button("Tap Count:\(tapCount)"){
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
