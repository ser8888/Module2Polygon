//
//  ViewController.swift
//  Module2Polygon
//
//  Created by John Doe on 22/07/2022.
//

import UIKit

class ViewController: UIViewController {

   // MARK: - IB Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var greetingButton: UIButton!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var mainLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 15
        
       // segmented controll
        segmentedControl.insertSegment(withTitle: "Третий", at: 2, animated: false)
        setupMainLabel()
        
    }

    // MARK: - IB Actions
    @IBAction func segmentedControlAction() {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран первый"
            mainLabel.textColor = .blue
        case 1:
            mainLabel.text = "Выбран второй"
            mainLabel.textColor = .brown
        default:
            mainLabel.text = "Выбран третий"
            mainLabel.textColor = .cyan
        }
    }
    
    @IBAction func greetingButtonTap() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle("Show Greeting", for: .normal)
        greetingLabel.isHidden ? greetingButton.setTitle("Show Greeting", for: .normal) : greetingButton.setTitle("Hide Greeting", for: .normal)
    }
    
    // MARK: - Private methodes
    
    private func setupMainLabel() {
        mainLabel.text = ""
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
    
}

