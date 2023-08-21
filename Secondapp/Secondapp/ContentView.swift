//
//  ContentView.swift
//  Secondapp
//
//  Created by Griffin McDonald on 2023-07-24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var double = 1
    @State private var factorial = 1
    @State private var prev = 0
    @State private var fib = 1
    var body: some View {
  
            VStack {
                Button("Watch how they grow!")
                {
                        count += 1
                        double *= 2
                        factorial *= count
                        fib += prev
                        prev = fib - prev
                    
                }
            HStack {
                VStack {
                    Text("Counter:")
                    Text("\(count)").foregroundStyle(.green)
                }.padding(20)
                VStack {
                    Text("Doubler:")
                    Text("\(double)").foregroundStyle(.red)
                }.padding(20)
                
            }
            HStack {
                VStack {
                    Text("Factorial:")
                    Text("\(factorial)").foregroundStyle(.blue)
                }.padding(20)
                VStack {
                    Text("Fibonacci:")
                    Text("\(fib)").foregroundStyle(.yellow)
                }.padding(20)
                
            }
            
        }.padding().font(.system(size: 20, weight: .bold))
        
    }}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .padding(.all)
    }
}
