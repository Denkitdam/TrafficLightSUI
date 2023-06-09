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
    
    private let lightOn = 1.0
    private let lightOff = 0.1
    
    
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
            redLight = Color.red.opacity(lightOn)
            greenLight = Color.green.opacity(lightOff)
            currentLight = .yellow
        case .yellow:
            redLight = Color.red.opacity(lightOff)
            yellowLight = Color.yellow.opacity(lightOn)
            currentLight = .green
        case .green:
            yellowLight = Color.yellow.opacity(lightOff)
            greenLight = Color.green.opacity(lightOn)
            currentLight = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
