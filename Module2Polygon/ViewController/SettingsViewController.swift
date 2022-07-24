//
//  SettingsViewController.swift
//  Module2Polygon
//
//  Created by John Doe on 23/07/2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var upperTextField: UITextField!
    @IBOutlet weak var downTextField: UITextField!
    
    //создам посредника так пока форма не загружена то будет краш. и передаем в сигвее данные сначала в посредника а потом в view.didload
    var mainValue: String!
    var notMainValue: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upperTextField.text = mainValue
        downTextField.text = notMainValue
       
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    

   
    // MARK: - Navigation

}
