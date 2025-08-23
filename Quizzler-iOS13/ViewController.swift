//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved./Users/ankit/Documents/IOS/IOS/Quizzler-iOS13/Quizzler-iOS13/ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    
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
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }



    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualQuestion = quiz[questionNumber]
        let actualAnswer = actualQuestion.answer
        
        if(userAnswer == actualAnswer){
            print("WOw, you are right!")
        }else{
            print("Uff, Try Again!!")
        }
        
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
        }else{
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
    }
}

