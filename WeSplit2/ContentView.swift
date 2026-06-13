//
//  ContentView.swift
//  WeSplit2
//
//  Created by Mahdi Lashgari on 13.06.26.
//

import SwiftUI

struct ContentView: View {
    let priate = ["Luffy","ZORO","God Usopp"]
    
    @State private var yonkons = "Luffy"
    var body: some View {
        NavigationStack{
            Form{
//                //            TextField("gib mir dein name", text: $name)
//                //            Text("Hello Pirate \(name)")
//    //            ForEach(0..<1000) {number in
//    //                Text("Row \(number)")
//                ForEach(0..<1000) {
//                    Text("Row \($0)")
                Picker("Select Your favorite Pirate", selection: $yonkons){
                    ForEach(priate, id: \.self){
                        Text($0)
                    }
                }
                    
                }
            }
        .navigationTitle("chosse your team")
            
        }

    }


#Preview {
    ContentView()
}
