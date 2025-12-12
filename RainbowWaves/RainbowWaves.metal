//
//  RainbowWaves.metal
//  RainbowWaves
//
//  Created by Alyona Voronina on 12.12.2025.
//
//  Based on: https://www.shadertoy.com/view/lXXXzS

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 rainbowColors(float2 position, float4 bounds,
    float iTime, float2 iMouse
) {
    //Scaled pixel coordinates
   // half2 p = half2( position / min(bounds.z, bounds.w)*6 ); //default
    
    half2 p = half2( position / min(bounds.z, bounds.w)*3 ); //my changes
    
    //8 wave passes
    for (int i = 0; i < 8; i++) {
        //Add a simple sine wave with an offset and animation
        p.x += sin(p.y + i + iTime*0.3);
        //Rotate and scale down
      //  p *= half2x2(6, -8, 8, 6) / 8.0h; //default
        p *= half2x2(6, -8, 18, 3) / 13.0h; //my changes
    }
    p += half2(iMouse/50);
    //Pick a color using the turbulent coordinates
 //   return sin(p.xyxy * 0.3 + half4(0, 1, 2, 3))*0.5 + 0.5; //default
    return cos(p.xyxy * 0.4 + half4(0, 1, 2, 3))*0.6 + 0.2; //my changes
}

