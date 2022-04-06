//
//  SpringAnimationData.swift
//  SpringTutorial
//
//  Created by Paul Matar on 06.04.2022.
//

import Spring

class SpringAnimationData {
    static let shared = SpringAnimationData()
    
    let springPresets = Spring.AnimationPreset.allCases
    let springCurves = Spring.AnimationCurve.allCases
    
    private init() {}
}
