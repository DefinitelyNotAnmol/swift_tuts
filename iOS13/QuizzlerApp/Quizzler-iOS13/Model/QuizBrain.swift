//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Anmol Jain on 24/11/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation

struct QuizBrain {
    let questions: [Question] = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber: Int = 0
    var interval: Float = 0.0
    var score: Int = 0
    
    init() {
        interval = 1.0 / Float(questions.count)
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if (userAnswer == questions[questionNumber].answer) {
            questionNumber += 1
            score += 1
            return true
        } else {
            questionNumber += 1
            return false
        }
    }
    
    func getQuestion() -> String {
        if questionNumber != questions.count {
            return questions[questionNumber].question
        } else {
            return "Done!\nYour final score is \(score)"
        }
    }
    
    func progressBarStatus() -> Float {
        return interval * Float(questionNumber)
    }
    
    func getScore() -> String {
        if questionNumber != questions.count {
            return "Score: \(score)"
        } else {
            return " "
        }
    }
}
