//
//  selfDriving.swift
//  classes and objects
//
//  Created by Anmol Jain on 27/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car{
    var Destination: String = "One Infinite Loop"
    
    override func drive() {
        super.drive()
        print("to \(Destination)")
    }
}
