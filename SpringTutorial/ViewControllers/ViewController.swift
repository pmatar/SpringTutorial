//
//  ViewController.swift
//  SpringTutorial
//
//  Created by Paul Matar on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var animationView: SpringView!
    @IBOutlet var presetInfoLabel: UILabel!
    @IBOutlet var runButton: UIButton!
    
    private var springAnimation = AnimationPreset.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel(presetInfoLabel)
    }
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        animateView(animationView)
        setupLabel(presetInfoLabel)
        
        springAnimation = AnimationPreset.getRandomAnimation()
        sender.setTitle("Run \(springAnimation.animation)", for: .normal)
    }
}

// MARK: - Private Methods

extension ViewController {
    private func setupLabel(_ label: UILabel) {
        label.text =
"""
preset: \(springAnimation.animation)
curve: \(springAnimation.curve)
force: \(String(format: "%.2f", springAnimation.force))
duration: \(String(format: "%.2f", springAnimation.duration))
delay: \(String(format: "%.2f", springAnimation.delay))
"""
    }
    
    private func animateView(_ view: SpringView) {
        view.animation = springAnimation.animation
        view.curve = springAnimation.curve
        view.force = springAnimation.force
        view.duration = springAnimation.duration
        view.delay = springAnimation.delay
        view.animate()
    }
}
