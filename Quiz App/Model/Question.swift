//
//  Question.swift
//  Quiz App
//
//  Created by Vishweshwaran on 14/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import Foundation

struct Question {
    let q : String
    let a : [String]
    let c : String
    
    init(text: String, option: [String] ,correctAnswer: String) {
        q = text
        a = option
        c = correctAnswer
    }
}
