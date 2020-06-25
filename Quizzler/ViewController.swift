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
        Question(query: "5 = 3 > 1", answer: "True"),
        Question(query: "8 + 3 < 10", answer: "False")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
    }
    
    func updateUI() {
        
    }
    
}

