//
//  ViewController.swift
//  TrafficLight
//
//  Created by Rustam Cherezbiev on 03.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var orangeTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var nextLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.layer.cornerRadius = 40
        orangeTrafficLight.layer.cornerRadius = 40
        greenTrafficLight.layer.cornerRadius = 40
        nextLightButton.layer.cornerRadius = 10
        redTrafficLight.alpha = 0.3
        orangeTrafficLight.alpha = 0.3
        greenTrafficLight.alpha = 0.3
    }

    @IBAction func switchTrafficLight(_ sender: UIButton) {
        if redTrafficLight.alpha == 0.3 {
            redTrafficLight.alpha = 1
        } else if redTrafficLight.alpha == 1{
            redTrafficLight.alpha = 0.3
            orangeTrafficLight.alpha = 1
        } else if orangeTrafficLight.alpha == 1 {
            orangeTrafficLight.alpha = 0.3
            greenTrafficLight.alpha = 1
        } else {
            greenTrafficLight.alpha = 0.3
            redTrafficLight.alpha = 1
        }
    }
    
}

