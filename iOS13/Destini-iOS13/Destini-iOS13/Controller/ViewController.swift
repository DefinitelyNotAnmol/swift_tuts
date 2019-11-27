//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var work: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        work.nextStage(userChoice: sender.tag)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = work.stageTitle()
        choice1Button.setTitle(work.stageChoice1(), for: .normal)
        choice2Button.setTitle(work.stageChoice2(), for: .normal)
    }
    
}

