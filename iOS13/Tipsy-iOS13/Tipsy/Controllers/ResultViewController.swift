//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Anmol Jain on 28/11/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var amount = 0.0
    var people = 0
    var tip = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(format: "%.2f", amount)
        settingsLabel.text = "Split between \(people), with \(tip)% tip."
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
