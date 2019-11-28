//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        bmi.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "results", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "results" {
            let resultsVC = segue.destination as! ResultViewController
            resultsVC.bmi = bmi.result()
            resultsVC.advice = bmi.getAdvice()
            resultsVC.color = bmi.getColor()
        }
    }
}

