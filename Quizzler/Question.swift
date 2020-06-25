//
//  Question.swift
//  Quizzler
//
//  Created by Juan Rodriguez on 2020-06-25.
//  Copyright © 2020 Juan Rodriguez. All rights reserved.
//

import Foundation

struct Question {
    let query: String
    let answer: String
    
    init(q: String, a: String) {
        self.query = q
        self.answer = a
    }
}
