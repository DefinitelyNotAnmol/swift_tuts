//
//  BMI.swift
//  BMI Calculator
//
//  Created by Anmol Jain on 28/11/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    var value: Float
    var advice: String
    var color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
