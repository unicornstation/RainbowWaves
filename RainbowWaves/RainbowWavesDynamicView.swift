//
//  RainbowWavesDynamicView.swift
//  RainbowWaves
//
//  Created by Alyona Voronina on 12.12.2025.
//

import SwiftUI
import Combine

struct RainbowWavesDynamicView: View {
    @State private var time: TimeInterval = 0
    @State private var location: CGPoint = .zero
    
    let timer = Timer.publish(every: 0.0016, on: .main, in: .common).autoconnect()
    
    var body: some View {
        RainbowWaves(
            time: time,
            location: location
        )
        .background(.black)
        .ignoresSafeArea()
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged({ value in
                    location = value.location
                })
        )
        .onReceive(timer) { _ in
            time = time + 0.0005
        }
    }
}

#Preview {
    RainbowWavesDynamicView()
}
