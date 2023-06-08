//
//  TrafficLightSignal.swift
//  TrafficLightSUI
//
//  Created by Denis Kitaev on 08.06.2023.
//

import SwiftUI

struct TrafficLightSignal: View {
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 200, height: 200)
            .foregroundColor(color)
            .opacity(0.3)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        
    }
}

struct TraficLightSignal_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightSignal(color: .red)
    }
}
