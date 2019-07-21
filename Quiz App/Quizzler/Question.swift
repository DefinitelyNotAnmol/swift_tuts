//
//  Question.swift
//  Quizzler
//
//  Created by Anmol Jain on 21/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation

class Question {
    
    var questionText : String
    var answer : Bool
    
    init(text:String, correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
    }
    
    
    
}
