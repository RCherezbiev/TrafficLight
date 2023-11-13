//
//  ViewController.swift
//  TrafficLight
//
//  Created by Rustam Cherezbiev on 03.11.2023.
//

import UIKit

enum CurrentLight {
    case red, orange, green
}

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var orangeView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var nextLightButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightOn = 1.0
    private let lightOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = lightOff
        orangeView.alpha = lightOff
        greenView.alpha = lightOff
        
        redView.layer.cornerRadius = redView.frame.height / 2
        orangeView.layer.cornerRadius = orangeView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        
        nextLightButton.layer.cornerRadius = 10
        
    }

    @IBAction func switchTrafficLight() {
        if nextLightButton.currentTitle == "START" {
            nextLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenView.alpha = lightOff
            redView.alpha = lightOn
            currentLight = CurrentLight.orange
        case .orange:
            redView.alpha = lightOff
            orangeView.alpha = lightOn
            currentLight = CurrentLight.green
        case .green:
            orangeView.alpha = lightOff
            greenView.alpha = lightOn
            currentLight = CurrentLight.red
        }
        
    }
}

