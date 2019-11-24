//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Anmol on 24/11/2019.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel:UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    var quiz = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz.getQuestion()
        scoreLabel.text = quiz.getScore()
        progressBar.progress = quiz.progressBarStatus()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if quiz.questionNumber != quiz.questions.count {
            
            if quiz.checkAnswer(userAnswer: sender.currentTitle!) {
                sender.backgroundColor = .green
            } else {
                sender.backgroundColor = .red
            }
            
            progressBar.progress = quiz.progressBarStatus()
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz.getQuestion()
        scoreLabel.text = quiz.getScore()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }
}

