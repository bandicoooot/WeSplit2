//
//  ContentView.swift
//  WeSplit2
//
//  Created by Mahdi Lashgari on 13.06.26.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        Form{
            TextField("gib mir dein name", text: $name)
            Text("Hello Pirate \(name)")
        }
    }
}

#Preview {
    ContentView()
}
