//
//  ViewController.swift
//  Module2Polygon
//
//  Created by John Doe on 22/07/2022.
//

import UIKit

class MainViewController: UIViewController {

   // MARK: - IB Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var greetingButton: UIButton!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var switchLabel: UILabel!
    
    
    
    
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 15
        
       // segmented controll
        segmentedControl.insertSegment(withTitle: "Третий", at: 2, animated: false)
        setupSlider()
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
    
    
    @IBAction func sliderction() {
        mainLabel.text = "\(slider.value)"
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(slider.value))
        
    }
    
    
    @IBAction func doneButtonPressed() {
        // проверяем есть ли nil либо пустая строка
        guard let inputText = textField.text, !inputText.isEmpty else {
            showAlert(with: "Text field is empty", and: "Please, enter your name")
            return
            
        }
        
        if let _ = Double(inputText) {
            showAlert(with: "Wrong format", and: "Please, enter your name")
            return
        }
        
        mainLabel.text = textField.text
    }
    
    @IBAction func swithAction(_ sender: UISwitch) {
        datePicker.isHidden = !sender.isOn
        switchLabel.text = sender.isOn ? "Hide Date Picker" : "Show Date Picker"
        
    }
    
    @IBAction func datePickerAction() {
        // для работы с датами сначала нажо создать экземпляр класса dateFormatter
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        mainLabel.text = dateFormatter.string(from: datePicker.date)
        
        
        
        
    }
    
    
    
    
    
    // MARK: - Private methodes
    
    private func setupMainLabel() {
        mainLabel.text = String(slider.value)
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
    
    private func setupSlider() {
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
    }
    
}
// MARK: -  UIAlertController
extension MainViewController {
    private func showAlert(with title: String, and  message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // создание второй кнопка для выхода из алерта
        let okAction = UIAlertAction(title: "OK", style: .default){ _ in
            self.textField.text = "что ты ввел??"
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
        
    }
}
