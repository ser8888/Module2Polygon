//
//  ViewController.swift
//  Module2Polygon
//
//  Created by John Doe on 22/07/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var greetingButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 15
        
       
    }


   
    @IBAction func greetingButtonTap() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle("Show Greeting", for: .normal)
        greetingLabel.isHidden ? greetingButton.setTitle("Show Greeting", for: .normal) : greetingButton.setTitle("Hide Greeting", for: .normal)
    }
    
    
}

