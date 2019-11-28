//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Anmol Jain on 28/11/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmi
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
