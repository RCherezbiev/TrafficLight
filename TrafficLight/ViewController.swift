//
//  ViewController.swift
//  TrafficLight
//
//  Created by Rustam Cherezbiev on 03.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var orangeTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.layer.cornerRadius = 75
        orangeTrafficLight.layer.cornerRadius = 75
        greenTrafficLight.layer.cornerRadius = 75
    }


}

