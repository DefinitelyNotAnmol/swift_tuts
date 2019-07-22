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
    var questionNumber: Int = -1
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            checkAnswer(answer: true)
        } else if sender.tag == 2 {
            checkAnswer(answer: false)
        }
        
        nextQuestion()
    }
    
    func updateUI() {
        questionLabel.text = allQuestion.list[questionNumber].questionText
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }

    func nextQuestion() {
        questionNumber += 1
        
        if questionNumber < 13 {
            updateUI()
        }
        
        else {
            let alert = UIAlertController(title: "Awesome", message: "You finished all the questions, your final score was \(score), do you want to start over", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func checkAnswer(answer:Bool) {
        if allQuestion.list[questionNumber].answer == answer {
            score += 1
            updateUI()
            print("You got it")
        } else {
            print("wrong answer")
        }
        
    }
    
    func startOver() {
        questionNumber = -1
        score = 0
        nextQuestion()
    }
    
}
