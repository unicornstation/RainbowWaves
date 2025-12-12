//
//  RainbowWaves.swift
//  RainbowWaves
//
//  Created by Alyona Voronina on 12.12.2025.
//

import SwiftUI

public struct RainbowWaves: ShapeStyle, View, Sendable {
    
    var time: TimeInterval
    var location: CGPoint
    
    public init(time: TimeInterval, location: CGPoint) {
        self.time = time
        self.location = location
    }
    public func resolve(in environment: EnvironmentValues) -> some ShapeStyle {
        shaderRainbowWavesfunc(
            .boundingRect,
            .float(time),
            .float2(location)
        )      
    }
}
