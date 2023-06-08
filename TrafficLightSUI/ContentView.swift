//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Denis Kitaev on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    var body: some View {
        VStack {
            VStack {
                TrafficLightSignal(color: .red)
                TrafficLightSignal(color: .yellow)
                TrafficLightSignal(color: .green)
            }
            Spacer()
            Button(action: changeColor) {
                Text("Start")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .overlay(Capsule().stroke(Color.white, lineWidth: 4))
            }
            
            
        }
    }
    
    private func changeColor() {
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
