//
//  ViewController.swift
//  Dice Shaker
//
//  Created by Anmol Jain on 10/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDice1:Int = 0
    var randomDice2:Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollDiceButton(_ sender: UIButton) {
        //What should happen when roll button is pressed
        randomDice1 = Int.random(in: 0...5)
        randomDice2 = Int.random(in: 0...5)
        
    }

}

