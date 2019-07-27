//
//  main.swift
//  classes and objects
//
//  Created by Anmol Jain on 27/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation

var bmw: Car = Car()
var mercedes : Car = Car(withCustomColor: .Silver, andWithDoors: 4)
//
//bmw.printCar()
//mercedes.printCar()
//mercedes.drive()

var tesla: SelfDrivingCar = SelfDrivingCar(withCustomColor: .White, andWithDoors: 4)
tesla.drive()
