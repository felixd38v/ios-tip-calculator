//
//  ContentView.swift
//  Shared
//
//  Created by fm on 10/05/22.
//#imageLiteral(resourceName: "Pasted Graphic 25.png")

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .foregroundColor(.blue)
                .padding()

            HStack {
                Text("$")
                TextField("Amount", text: $total)
                
            }
            .padding(.all)
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            if let totalNum = Double(total) {//To avoid the app from crashing when a user types a letter instead of a number, i.e., the app will attempt to perform the calculations ONLY if the type casting is successful
                Text("Tip Amount: $\(totalNum * tipPercent / 100.0, specifier: "%0.2f")")
            } else {
                Text("You typed a letter or symbol by mistake. Please type a number")
            }

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
