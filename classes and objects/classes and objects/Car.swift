//
//  Car.swift
//  classes and objects
//
//  Created by Anmol Jain on 27/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
    case SUV
    case miniSUV
    case sports
}

enum CarColor {
    case Black
    case Red
    case Silver
    case White
    case Blue
    case Olive
    case Yellow
}

class Car {
    private var color: CarColor = .Black
    var numberOfDoors: Int = 5
    var type: CarType = .Sedan
    
    init() {
        
    }
    
    convenience init(withCustomColor carColor : CarColor, andWithDoors noOfDoors : Int) {
        self.init()
        color = carColor
        numberOfDoors = noOfDoors
    }
    
    func printCar() {
        if type == .Sedan {
            print("Yes, My Love")
        } else {
            print(type)
        }
        
        print(color)
        print(numberOfDoors)
    }
    
    func drive() {
        print("started driving \(color) \(type) with \(numberOfDoors)")
    }
}
