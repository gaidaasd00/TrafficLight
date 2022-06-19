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
        
        startButton.layer.cornerRadius = 10
        
        redLable.alpha = lightOff
        yellowLable.alpha = lightOff
        greenLable.alpha = lightOff
        
    }
    
   override func viewWillLayoutSubviews() {
       redLable.layer.cornerRadius = redLable.frame.width / 2
       yellowLable.layer.cornerRadius = yellowLable.frame.width / 2
       greenLable.layer.cornerRadius = greenLable.frame.width / 2
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

