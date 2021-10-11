//
//  ViewController.swift
//  TrafficLight
//
//  Created by Владимир Макаров on 11.10.2021.
//

import UIKit

enum ConditionLight {
    case red, yelow, green
}

class ViewController: UIViewController {
    @IBOutlet weak var ligthRed: UIView!
    @IBOutlet weak var lightYelow: UIView!
    @IBOutlet weak var lightGreen: UIView!

    @IBOutlet weak var buttnLight: UIButton!
    
    
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    var conditionLight = ConditionLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ligthRed.alpha = lightOff
        lightYelow.alpha = lightOff
        lightGreen.alpha = lightOff
        
        buttnLight.layer.cornerRadius = 10

        ligthRed.layer.cornerRadius = ligthRed.frame.height / 2
        lightYelow.layer.cornerRadius = lightYelow.frame.height / 2
        lightGreen.layer.cornerRadius = lightGreen.frame.height / 2
    }
    
    
    @IBAction func buttnLightPressed() {
        if buttnLight.currentTitle == "START" {
            buttnLight.setTitle("NEXT", for: .normal)
    }
        
        switch conditionLight {
        case.red:
            ligthRed.alpha = lightOn
            lightGreen.alpha = lightOff
            conditionLight = .yelow
            
        case .yelow:
            ligthRed.alpha = lightOff
            lightYelow.alpha = lightOn
            conditionLight = .green

        case .green:
            lightYelow.alpha = lightOff
            lightGreen.alpha = lightOn
            conditionLight = .red

        }
    }
}

