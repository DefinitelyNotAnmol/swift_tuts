//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anmol Jain on 28/11/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    
    var bmi: BMI? = nil

    mutating func calculateBMI(height: Float, weight: Float) {
        let tempBMI = weight / (height * height)
        
        if tempBMI < 18.5 {
            bmi = BMI(value: tempBMI, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if tempBMI < 25.0 {
            bmi = BMI(value: tempBMI, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: tempBMI, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func result() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
