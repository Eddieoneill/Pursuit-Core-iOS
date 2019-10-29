//
//  Question.swift
//  TriviaGame
//
//  Created by Edward O'Neill on 10/21/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import Foundation

class Question {
    var questionPrompt: String
    var correctAnswer: String
    var choices: String
    var fact: String
    var triviaType: TriviaType
    
    // TODO: complete designated initializer
    init(questionPrompt: String,
         correctAnswer: String,
         choices: String,
         fact: String,
         triviaType: TriviaType) {
        self.questionPrompt = questionPrompt
        self.correctAnswer = correctAnswer
        self.choices = choices
        self.fact = fact
        self.triviaType = triviaType
    }
    
    convenience init?(dict: [String: Any]) {
        
        guard let questionPrompt = dict["question"] as? String,
            let currentAnswer = dict["correctAnswer"] as? String,
            let choices = dict["choices"] as? String,
            let fact = dict["fact"] as? String,
            let triviaType = dict["triviaType"] as? String
            else { return nil }
        
        // 2. TODO: get a valid TriviaType from the enum to add to the designated initializer below
        self.init(questionPrompt: questionPrompt,
                  correctAnswer: currentAnswer,
                  choices: choices,
                  fact: fact,
                  triviaType: TriviaType(rawValue: triviaType) ?? .musicTrivia )
    }
}


