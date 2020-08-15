//
//  ViewController.swift
//  Quiz App
//
//  Created by Vishweshwaran on 13/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var newButton: UIButton!
    
    var timer : Timer?
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let actualResult = quizBrain.checkAnswer(answer: userAnswer)
        
        if actualResult {
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        newButton.backgroundColor = UIColor.clear
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        questionLabel.text = quizBrain.getQuestionText()
        newButton.setTitle(quizBrain.getOptionA(), for: .normal)
        trueButton.setTitle(quizBrain.getOptionB(), for: .normal)
        falseButton.setTitle(quizBrain.getOptionC(), for: .normal)
        progressBar.progress = quizBrain.getProgress()
        
    }
    
}

