//
//  ViewController.swift
//  SpringTutorial
//
//  Created by Paul Matar on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var animationView: SpringView!
    @IBOutlet var presetInfoLabel: UILabel! {
        didSet {
            setupLabel()
        }
    }
        
    private var springAnimation = AnimationPreset.getRandomAnimation()
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        animateView()
        setupLabel()
        
        springAnimation = AnimationPreset.getRandomAnimation()
        sender.setTitle("Run \(springAnimation.animation)", for: .normal)
    }
}

// MARK: - Private Methods

extension ViewController {
    private func setupLabel() {
        presetInfoLabel.text = springAnimation.description
    }
    
    private func animateView() {
        animationView.animation = springAnimation.animation
        animationView.curve = springAnimation.curve
        animationView.force = springAnimation.force
        animationView.duration = springAnimation.duration
        animationView.delay = springAnimation.delay
        animationView.animate()
    }
}
