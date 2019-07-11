//
//  ViewController.swift
//  Dice Shaker
//
//  Created by Anmol Jain on 10/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceImages:[String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    func randomiseDiceViews() {
        diceImageView1.image = UIImage(named: diceImages[Int.random(in: 0...5)])
        diceImageView2.image = UIImage(named: diceImages[Int.random(in: 0...5)])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomiseDiceViews()
    }
    
    @IBAction func rollDiceButton(_ sender: UIButton) {
        //What should happen when roll button is pressed
        randomiseDiceViews()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        //motionEnded is an event which is triggered when user shakes his/her phone and user stops shaking [basically when the motion ends]
        randomiseDiceViews()
    }
}

