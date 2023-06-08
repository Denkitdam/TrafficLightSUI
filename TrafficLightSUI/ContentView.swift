//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Denis Kitaev on 08.06.2023.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State var title = "Start"
    @State private var currentLight = CurrentLight.red
    
    @State private var redLight = Color.red.opacity(0.1)
    @State private var yellowLight = Color.yellow.opacity(0.1)
    @State private var greenLight = Color.green.opacity(0.1)
    
    
    
    
    var body: some View {
        VStack {
            VStack {
                TrafficLightSignal(color: redLight)
                TrafficLightSignal(color: yellowLight)
                TrafficLightSignal(color: greenLight)
            }
            Spacer()
            Button(action: changeColor) {
                Text(title)
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
        if title == "Start" {
            title = "Next"
        }
        
        switch currentLight {
        case .red:
            redLight = Color.red.opacity(1)
            greenLight = Color.green.opacity(0.1)
            currentLight = .yellow
        case .yellow:
            redLight = Color.red.opacity(0.1)
            yellowLight = Color.yellow.opacity(1)
            currentLight = .green
        case .green:
            yellowLight = Color.yellow.opacity(0.1)
            greenLight = Color.green.opacity(1)
            currentLight = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
