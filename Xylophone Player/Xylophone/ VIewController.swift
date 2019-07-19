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
    
    var player:AVAudioPlayer?
    let note1 = Bundle.main.url(forResource: "note1", withExtension: "wav")
    let note2 = Bundle.main.url(forResource: "note2", withExtension: "wav")
    let note3 = Bundle.main.url(forResource: "note3", withExtension: "wav")
    let note4 = Bundle.main.url(forResource: "note4", withExtension: "wav")
    let note5 = Bundle.main.url(forResource: "note5", withExtension: "wav")
    let note6 = Bundle.main.url(forResource: "note6", withExtension: "wav")
    let note7 = Bundle.main.url(forResource: "note7", withExtension: "wav")

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(_ sound:URL) {
        do {
            player = try AVAudioPlayer(contentsOf: sound)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()
        } catch let error as Error {
            print(error)
        }
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            playSound(note1!)
        } else if sender.tag == 2 {
            playSound(note2!)
        } else if sender.tag == 3 {
            playSound(note3!)
        } else if sender.tag == 4 {
            playSound(note4!)
        } else if sender.tag == 5 {
            playSound(note5!)
        } else if sender.tag == 6 {
            playSound(note6!)
        } else {
            playSound(note7!)
        }
        
    }

}

