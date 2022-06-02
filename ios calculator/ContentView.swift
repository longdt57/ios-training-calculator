//
//  ContentView.swift
//  ios calculator
//
//  Created by LONGDT12 on 6/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
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
            
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent / 100.0, specifier: "%0.2f")")
            } else {
                Text("Please enter a numberical value")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
