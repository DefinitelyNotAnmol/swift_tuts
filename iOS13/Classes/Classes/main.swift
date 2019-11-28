//
//  main.swift
//  Classes
//
//  Created by Anmol Jain on 28/11/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation

var player = Entity()
var enemy = Entity()

print("Player Health: \(Entity.health)")
print("Enemy Health: \(Entity.health)")

Entity.health = 10000

print("Player Health: \(Entity.health)")
print("Enemy Health: \(Entity.health)")

