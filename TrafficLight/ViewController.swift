//
//  ViewController.swift
//  TrafficLight
//
//  Created by Владимир Макаров on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ligthRed: UIView!
    @IBOutlet weak var lightYelow: UIView!
    @IBOutlet weak var lightGreen: UIView!

    @IBOutlet weak var buttnLight: UIButton!
    
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttnLight.layer.cornerRadius = 10
        
        ligthRed.alpha = lightOff
        lightYelow.alpha = lightOff
        lightGreen.alpha = lightOff
        
        ligthRed.layer.cornerRadius = 50
        lightYelow.layer.cornerRadius = 50
        lightGreen.layer.cornerRadius = 50
    }
    
    @IBAction func buttnLightPressed() {
        if buttnLight.currentTitle == "START" {
            buttnLight.setTitle("NEXT", for: .normal)
            ligthRed.alpha = lightOn
            lightYelow.alpha = lightOff
            lightGreen.alpha = lightOff
        } else if ligthRed.alpha == lightOn {
            ligthRed.alpha = lightOff
            lightYelow.alpha = lightOn
        } else if lightYelow.alpha == lightOn {
            ligthRed.alpha = lightOff
            lightYelow.alpha = lightOff
            lightGreen.alpha = lightOn
        }
    }
    
}

