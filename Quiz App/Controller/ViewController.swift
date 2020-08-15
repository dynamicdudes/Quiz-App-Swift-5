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
    
    var timer : Timer?
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        quizBrain.checkAnswer(answer: userAnswer)
        
        
        if userAnswer == actualAnswer{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        if questionNumber < questionArray.count - 1{
            questionNumber+=1
        }
        else{
            questionNumber = 0
//            print("Questions are over....")
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        questionLabel.text = questionArray[questionNumber].text
        progressBar.progress = Float(questionNumber + 1) / Float(questionArray.count)
        
    }
    
}

