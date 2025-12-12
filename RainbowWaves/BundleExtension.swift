//
//  BundleExtension.swift
//  RainbowWaves
//
//  Created by Alyona Voronina on 12.12.2025.
//

import SwiftUI

public extension Bundle {
    
    static let shaderRainbowWaves: Bundle = .main
}

public let shaderRainbowWavesfunc = ShaderLibrary.bundle(.shaderRainbowWaves)[dynamicMember: "rainbowWaves"]
