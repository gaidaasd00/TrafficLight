//
//  ViewController.swift
//  TrafficLight
//
//  Created by Алексей Гайдуков on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLable: UIView!
    @IBOutlet var yellowLable: UIView!
    @IBOutlet var greenLable: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.1

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLable.layer.cornerRadius = 50
        yellowLable.layer.cornerRadius = 50
        greenLable.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
        
        redLable.alpha = lightOff
        yellowLable.alpha = lightOff
        greenLable.alpha = lightOff
        
        
        
    }

    @IBAction func startButtonTapped() {
        startButton.setTitle(redLable.isHidden ? "START" : "NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redLable.alpha = lightOn
            greenLable.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            redLable.alpha = lightOff
            yellowLable.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLable.alpha = lightOff
            greenLable.alpha = lightOn
            currentLight = .red
        }
        
    }
    
}

