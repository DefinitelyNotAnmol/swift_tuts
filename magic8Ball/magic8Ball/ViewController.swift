//
//  ViewController.swift
//  magic8Ball
//
//  Created by Anmol Jain on 11/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImageView:[String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var godBallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickMe(_ sender: UIButton) {
        godBallImageView.image = UIImage(named: ballImageView[Int.random(in: 0...4)])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        godBallImageView.image = UIImage(named: ballImageView[Int.random(in: 0...4)])
    }
}

