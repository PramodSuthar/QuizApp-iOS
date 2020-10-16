//
//  quiz.swift
//  FinalExam1
//
//  Created by english on 2020-07-30.
//  Copyright © 2020 Pramod Suthar. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let choices: [String]
    
    let correctAnswer: String
    
    init(question: String, choice:[String], rightChoice: String) {
        text = question
        choices = choice
        correctAnswer = rightChoice
    }
}
