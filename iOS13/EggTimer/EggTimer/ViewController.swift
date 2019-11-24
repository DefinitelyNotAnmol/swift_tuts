//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let times:[String:Int] = [
        "Soft" : 5,
        "Medium" : 8,
        "Hard" : 12
    ]
    
    var seconds:Int = 0
    var timer = Timer()
    var interval:Float = 0.0
    
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
    }

    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle
        status.text = "Cooking your \(hardness!) eggs!"
        seconds = times[hardness!]!
        interval = 1 / Float(seconds)
        
        progressBar.progress = 0.0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        progressBar.progress += interval
        if seconds > 1 {
            seconds -= 1
        } else {
            status.text = "Done"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            timer.invalidate()
        }
    }
}
