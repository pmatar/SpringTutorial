//
//  SpringAnimation.swift
//  SpringTutorial
//
//  Created by Paul Matar on 05.04.2022.
//

struct AnimationPreset {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
    """
    preset: \(animation)
    curve: \(curve)
    force: \(String(format: "%.2f", force))
    duration: \(String(format: "%.2f", duration))
    delay: \(String(format: "%.2f", delay))
    """
    }
    
    static func getRandomAnimation() -> AnimationPreset {
        AnimationPreset(
            animation: SpringAnimationData.shared.springPresets.randomElement()?.rawValue ?? "",
            curve: SpringAnimationData.shared.springCurves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 0...2),
            duration: Float.random(in: 0.5...1.5),
            delay: Float.random(in: 0.1...0.5)
            )
    }
}


