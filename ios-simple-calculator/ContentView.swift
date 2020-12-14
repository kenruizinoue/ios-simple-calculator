//
//  ContentView.swift
//  ios-simple-calculator
//
//  Created by kenruizinoue on 13/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var value1: String = ""
    @State var value2: String = ""
    @State var result: String = "0"
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack() {
                TextField("Number 1", text: $value1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading, 24)
                    .padding(.trailing, 12)
                
                TextField("Number 2", text: $value2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading, 12)
                    .padding(.trailing, 24)
            }
            .padding(.bottom, 12)
            
            Button(action: {
                let num1 = Int(value1) ?? 0
                let num2 = Int(value2) ?? 0
                self.result = String(num1 + num2)
            }) {
                Text("Sum")
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 12)
                
            Button(action: {
                let num1 = Int(value1) ?? 0
                let num2 = Int(value2) ?? 0
                self.result = String(num1 - num2)
            }) {
                Text("Sub")
            }
            .padding(.bottom, 12)
            .padding(.horizontal, 24)
            
            Button(action: {
                let num1 = Int(value1) ?? 0
                let num2 = Int(value2) ?? 0
                self.result = String(num1 * num2)
            }) {
                Text("Mult")
            }
            .padding(.bottom, 12)
            .padding(.horizontal, 24)
            
            Button(action: {
                let num1 = Float(value1) ?? 0
                let num2 = Float(value2) ?? 0
                self.result = String(num1 / num2)
            }) {
                Text("Div")
            }
            .padding(.bottom, 12)
            .padding(.horizontal, 24)
            
            Text(result)
                .padding(.bottom, 12)
                .padding(.horizontal, 24)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
