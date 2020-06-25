//
//  ViewController.swift
//  Quizzler
//
//  Created by Juan Rodriguez on 2020-06-24.
//  Copyright © 2020 Juan Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        Question(query: "4 + 2 = \(4 + 2)", answer: "True"),
        Question(query: "5 - 3 > 1", answer: "True"),
        Question(query: "8 + 3 < 10", answer: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel!.text!
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer { print("Correct!") }
        else { print("Incorrect!") }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].query
    }
    
}

