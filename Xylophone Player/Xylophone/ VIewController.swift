//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    let soundArray : [String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(_ sound:String) {
        let note1 = Bundle.main.url(forResource: sound, withExtension: "wav")
        do {
            player = try AVAudioPlayer(contentsOf: note1!)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()
        } catch let error as Error {
            print(error)
        }
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundArray[sender.tag-1])
    }

}

