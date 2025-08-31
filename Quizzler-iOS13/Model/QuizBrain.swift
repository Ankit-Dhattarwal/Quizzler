//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Ankit on 24/08/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation


struct QuizBrain{
    
    let quiz = [
        Question(q: "HTML stands for HyperText Markup Language.", a: "True"),
        Question(q: "In programming, '==' is used to assign a value to a variable.", a: "False"),
        Question(q: "The main function is the entry point of a C/C++ program.", a: "True"),
        Question(q: "Python is a statically typed language.", a: "False"),
        Question(q: "In object-oriented programming, a class can inherit from multiple classes in Java.", a: "False"),
        Question(q: "The first computer virus was created in the 1980s.", a: "True"),
        Question(q: "RAM stands for Random Access Memory.", a: "True"),
        Question(q: "Binary uses base 10 to represent numbers.", a: "False"),
        Question(q: "In programming, 'for' loops can be used to iterate over a range of numbers.", a: "True"),
        Question(q: "A compiler translates source code directly into machine code without producing an intermediate code.", a: "False"),
        Question(q: "Open-source software is always free of cost.", a: "False"),
        Question(q: "A stack follows the Last In, First Out (LIFO) principle.", a: "True")
        
    ]
    
    var questionNumber = 0
    var scoreValue = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if( userAnswer == quiz[questionNumber].answer){
            scoreValue += 1
            return true
        }else{
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgressBr() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    // Here we need to add the mutation bcz we try to modify inside the struct [ and when use try to modify any value inside struct then it call like self.NameOfVaribale ]
    
    mutating func nextQuestion() {
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
        }else{
            questionNumber = 0
            scoreValue = 0
        }
    }
    
    func getScore() -> Int{

        return scoreValue
    }
    
}
