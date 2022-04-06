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
        setupLabel()
    }
    
    @IBAction func runButtonPressed() {
        animateView()
        setupLabel()
        
        springAnimation = AnimationPreset.getRandomAnimation()
        runButton.setTitle("Run \(springAnimation.animation)", for: .normal)
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
        animationView.force = CGFloat(springAnimation.force)
        animationView.duration = CGFloat(springAnimation.duration)
        animationView.delay = CGFloat(springAnimation.delay)
        animationView.animate()
    }
}
