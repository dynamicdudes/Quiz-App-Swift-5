//
//  QuizBrain.swift
//  Quiz App
//
//  Created by Vishweshwaran on 15/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let questionArray =  [
        //        Question(text: "A slug's blood is green.", answer: "True"),
        //        Question(text: "Approximately one quarter of human bones are in the feet.", answer: "True"),
        //        Question(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
        //        Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
        //        Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
        //        Question(text: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
        //        Question(text: "You can lead a cow down stairs but not up stairs.", answer: "False"),
        //        Question(text: "Google was originally called 'Backrub'.", answer: "True"),
        //        Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
        //        Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
        //        Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
        //        Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
        
        Question(text: "Which is the largest organ in the human body?", option:  ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(text: "Five dollars is worth how many nickels?", option: ["25", "50", "100"], correctAnswer: "100"),
        Question(text: "What do the letters in the GMT time zone stand for?", option: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(text: "What is the French word for 'hat'?", option: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(text: "In past times, what would a gentleman keep in his fob pocket?", option: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(text: "How would one say goodbye in Spanish?", option: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(text: "Which of these colours is NOT featured in the logo for Google?", option: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(text: "What alcoholic drink is made from molasses?", option: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(text: "What type of animal was Harambe?", option: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(text: "Where is Tasmania located?", option: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        
    ]
    
    var questionNumber : Int = 0
    var score : Int = 0
    
    
    mutating func checkAnswer(answer userAnswer: String) -> Bool{
    
        if userAnswer == questionArray[questionNumber].c{
            score += 10
            return true
        }
        else{
            return false
        }
    
    }
    
    func getQuestionText() -> String {
        return questionArray[questionNumber].q
    }
    
    func getProgress() -> Float{
        let progress = Float(questionNumber) / Float(questionArray.count)
        return progress
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion(){
        
        if questionNumber + 1 < questionArray.count{
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
        
    }
    
    func getOptionA() -> String{
        return questionArray[questionNumber].a[0]
    }
    func getOptionB() -> String{
        return questionArray[questionNumber].a[1]
    }
    func getOptionC() -> String{
        return questionArray[questionNumber].a[2]
    }
    
    
}
