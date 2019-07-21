//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestion: QuestionBank = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = allQuestion.list[questionNumber].questionText
        progressLabel.text = String(questionNumber+1) + "/13"
        scoreLabel.text = String(score)
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            checkAnswer(answer: true)
        } else if sender.tag == 2 {
            checkAnswer(answer: false)
        }
    }
    
    func updateUI() {

    }

    func nextQuestion() {
        questionNumber += 1
        if questionNumber >= 13 {
            startOver()
        }
        questionLabel.text = allQuestion.list[questionNumber].questionText
        progressLabel.text = String(questionNumber + 1) + "/13"
        scoreLabel.text = String(score)
    }
    
    func checkAnswer(answer:Bool) {
        if allQuestion.list[questionNumber].answer == answer {
            score += 1
        }
        nextQuestion()
    }
    
    func startOver() {
        questionNumber = 0
        score = 0
    }
    
}
