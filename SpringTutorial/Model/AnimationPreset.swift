//
//  SpringAnimation.swift
//  SpringTutorial
//
//  Created by Paul Matar on 05.04.2022.
//

struct AnimationPreset {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
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
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.5...1.5),
            delay: Double.random(in: 0.1...0.5)
            )
    }
}


