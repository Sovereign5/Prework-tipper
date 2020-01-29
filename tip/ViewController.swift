//
//  ViewController.swift
//  tip
//
//  Created by user166516 on 1/27/20.
//  Copyright © 2020 user166516. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var peopleSlider: UISlider!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billField.text!) ?? 0
        let people = Int(peopleSlider.value) ?? 1
        
        // Calculate the tip and total
        let tipPercentages = [0.1, 0.2, 0.25]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = (bill + tip) / Double(people)
        
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        numberOfPeopleLabel.text = String(people)
    }
}

