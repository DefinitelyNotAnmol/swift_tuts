//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title: String
    var choice1: [Any]
    var choice2: [Any]
    
    init(title: String, choice1: [Any], choice2: [Any]) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
