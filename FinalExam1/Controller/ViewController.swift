//
//  ViewController.swift
//  FinalExam1
//
//  Created by english on 2020-07-30.
//  Copyright © 2020 Pramod Suthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    
    @IBOutlet weak var userProgressBar: UIProgressView!
    @IBOutlet weak var userScore: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    var quizLogic = QuizLogic()
    
    @IBAction func answerButtonPressed(_ sender: UIButton
    ) {
        let userInput = sender.currentTitle!
        
        let userGotCorrect = quizLogic.checkAnswer(userChoice:userInput)
        
        if userGotCorrect {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
            
        }
        
        quizLogic.nextQues()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI() {
        
        questionLabel.text = quizLogic.getQuestionText()            
        let answerOptions = quizLogic.getAnswers()
        optionA.setTitle(answerOptions[0], for: .normal)
        optionB.setTitle(answerOptions[1], for: .normal)
        optionC.setTitle(answerOptions[2], for: .normal)
        userProgressBar.progress = quizLogic.getProgress()
        userScore.text = "Score: \(quizLogic.getUserScore())"
        optionA.backgroundColor = UIColor.clear
        optionB.backgroundColor = UIColor.clear
        optionC.backgroundColor = UIColor.clear
        
        
    }
    

}

