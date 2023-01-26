//
//  ViewController.swift
//  Pre Work
//
//  Created by nicole gordon on 1/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBAction func stepperChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "Hi! My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am currently in my \(year!) year at the \(schoolNameTextField.text!). I own \(numberOfPetsLabel.text!) dogs, and it is \(morePetsSwitch.isOn) that I want more pets."
        print(introduction)
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

