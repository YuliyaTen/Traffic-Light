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
    
    @IBOutlet var colorViews: [UIView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for color in colorViews {
            color.layer.cornerRadius = 70
            color.alpha = 0.2
        }
        
        startButton.layer.cornerRadius = 10

    }

    @IBAction func startButtonTapped() {
        startButton.setTitle("Next", for: .normal)
        
        if redView.alpha == yellowView.alpha {
            redView.alpha = 100
            greenView.alpha = 0.2
        } else if yellowView.alpha == greenView.alpha {
            redView.alpha = 0.2
            yellowView.alpha = 100
        } else if greenView.alpha == redView.alpha {
            yellowView.alpha = 0.2
            greenView.alpha = 100
        } else if greenView.alpha == redView.alpha {
            greenView.alpha = 0.2
            redView.alpha = 100
        }
    }
    
    
}

