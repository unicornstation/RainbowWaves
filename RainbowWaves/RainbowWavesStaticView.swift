//
//  RainbowWavesStaticView.swift
//  RainbowWaves
//
//  Created by Alyona Voronina on 12.12.2025.
//

import SwiftUI

struct RainbowWavesStaticView: View {
    var body: some View {
        RainbowWaves(time: 1000, location: .zero)
            .background(.black)
            .ignoresSafeArea()
    }
}

#Preview {
    RainbowWavesStaticView()
}

