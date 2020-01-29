//
//  ViewController.swift
//  HW2.1(2)
//
//  Created by Alex Tishchenko on 29.01.2020.
//  Copyright © 2020 Alex Tishchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLght: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        redLight.layer.cornerRadius = 90
        yellowLght.layer.cornerRadius = 90
        greenLight.layer.cornerRadius = 90
        
        buttonStart.layer.cornerRadius = 15
        
        redLight.backgroundColor = .red
        yellowLght.backgroundColor = .yellow
        greenLight.backgroundColor = .green
        
        redLight.alpha = 0.3
        yellowLght.alpha = 0.3
        greenLight.alpha = 0.3
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if redLight.alpha == 1 {
            yellowLght.alpha = 1
            redLight.alpha = 0.3
        } else if yellowLght.alpha == 1{
            greenLight.alpha = 1
            yellowLght.alpha = 0.3
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        } else {
            redLight.alpha = 1
            buttonStart.setTitle("NEXT", for: .normal)
        }
        
    }
    
    
}
