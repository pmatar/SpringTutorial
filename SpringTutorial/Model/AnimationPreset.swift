//
//  SpringAnimation.swift
//  SpringTutorial
//
//  Created by Paul Matar on 05.04.2022.
//

import Spring

struct AnimationPreset {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getRandomAnimation() -> AnimationPreset {
        AnimationPreset(
            animation: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: CGFloat.random(in: 0...2),
            duration: CGFloat.random(in: 0.5...1.5),
            delay: CGFloat.random(in: 0.1...0.5)
        )
    }
}

