//
//  Question.swift
//  Quiz App
//
//  Created by Vishweshwaran on 14/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(text: String, answer : String) {
        self.text = text
        self.answer = answer
    }
}
