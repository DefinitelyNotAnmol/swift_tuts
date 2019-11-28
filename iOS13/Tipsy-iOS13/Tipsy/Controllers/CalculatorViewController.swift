//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    
    var percentTip: Int = 0
    var numberOfPeople: Int = 2
    var totalAmount = 0.0
    var amountPerPerson = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tenTipButton.isSelected = false
        zeroTipButton.isSelected = true
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        billAmount.endEditing(true)
        
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
        sender.isSelected = true
        
        percentTip = Int(Double(String((sender.currentTitle?.dropLast())!))!)
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        splitLabel.text = "\(Int(sender.value))"
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let amount = billAmount.text!
        if amount != "" {
            totalAmount = Double(amount)!
            totalAmount += totalAmount * (Double(percentTip) / 100)
            amountPerPerson = totalAmount / Double(numberOfPeople)
        }
        
        performSegue(withIdentifier: "results", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "results" {
            let resultsVC = segue.destination as! ResultViewController
            resultsVC.amount = amountPerPerson
            resultsVC.people = numberOfPeople
            resultsVC.tip = percentTip
        }
    }
}

