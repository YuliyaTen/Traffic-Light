//
//  ViewController.swift
//  Traffic Light
//
//  Created by Yuliya Ten on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightsIsOn: CGFloat = 1
    private let lightsIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        startButton.layer.cornerRadius = 10
        
        redView.alpha = lightsIsOff
        yellowView.alpha = lightsIsOff
        greenView.alpha = lightsIsOff
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = redView.frame.width / 2
        greenView.layer.cornerRadius = redView.frame.width / 2
    }

   
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "START"{
            startButton.setTitle("NEXT", for: .normal)
    }
    
        switch currentLight {
        case .red:
            greenView.alpha = lightsIsOff
            redView.alpha = lightsIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightsIsOff
            yellowView.alpha = lightsIsOn
            currentLight = .green
        case .green:
            yellowView.alpha = lightsIsOff
            greenView.alpha = lightsIsOn
            currentLight = .red
        }
    }
}
    
// MARK: - CurrentLight
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
