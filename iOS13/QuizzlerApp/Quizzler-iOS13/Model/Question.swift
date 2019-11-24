//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Anmol Jain on 24/11/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
