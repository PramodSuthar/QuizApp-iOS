//
//  quizLogic.swift
//  FinalExam1
//
//  Created by english on 2020-07-30.
//  Copyright © 2020 Pramod Suthar. All rights reserved.
//

import Foundation

    struct QuizLogic {
    var questionNumber = 0
    var userScore = 0
    
    
    let quiz = [
        Question(question: "Which country has beaver as the national emblem?", choice: ["Turkey", "Peru", "Canada"], rightChoice: "Canada"),
        Question(question: "Which is the hottest planet?", choice: ["Mercury", "Saturn", "Jupiter"], rightChoice: "Venus"),
        Question(question: "What was the name of Robert De Niro’s character in Taxi Driver?", choice: ["Jimmy Bickle", "Harry Bickle", "Travis Bickle"], rightChoice: "Travis Bickle"),
        Question(question: "Which war caused the greatest loss of life for Americans?", choice: ["WW1", "Civil War", "Vietnam War"], rightChoice: "Civil War"),
        Question(question: "Which country employed the first police woman?", choice: ["USA", "France", "England"], rightChoice: "USA"),
        Question(question: "How many blue stripes are there on the U.S. flag", choice: ["6", "7", "13"], rightChoice: "13"),
        Question(question: " Which one of these characters is not friends with Harry Potter?", choice: ["Ron Weasley", "Neville Longbottom", "Draco Malfoy"], rightChoice: "Draco Malfoy"),
        Question(question: "Which country held the 2016 Summer Olympics?", choice: ["China", "Brazil", "Italy"], rightChoice: "Brazil"),
        Question(question: "What does the “D” in “D-Day” stand for??", choice: ["Dooms", "Dark", "Demolition"], rightChoice: "Dooms"),
        Question(question: "In Pirates of the Caribbean, what was the name of Captain Jack Sparrow’s ship?", choice: ["The Marauder", "The Slytherin", "The Black Pearl"], rightChoice: "The Black Pearl"),
        
    ]

    func getUserScore() -> Int {
        return userScore
    }
    
    func getQuestionText () -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].choices
    }
    
    func getProgress() ->Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQues() {
        if questionNumber + 1 < quiz.count {

            questionNumber += 1
        }else {

            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userChoice: String) -> Bool {
        if userChoice == quiz[questionNumber].correctAnswer {
            userScore += 1
            return true
        }
        else {
            return false
        }
    }
}
