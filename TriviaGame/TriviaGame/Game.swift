//
//  Game.swift
//  TriviaGame
//
//  Created by Edward O'Neill on 10/21/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import Foundation



class Game {
    // MARK: Properties of Game
    var questions = [Question]()
    var score = 0
    var totalQuestion = 0
    var hasMoreQuestions: Bool { // accessors available in Swift are getters and setters
        return !questions.isEmpty
    }
    
    // MARK: methods of game
     func getQuestion() -> Question? {
        // shuffle the array
        questions = questions.shuffled()
        // popLast removes the last element and returns it
        return questions.popLast()
     }
    
    // 2. write a method to start the Game this method creates the array of questions [Question]
    func createQuestions(_ triviaType: TriviaType) {
        for dict in Trivia.data {
            if let unwrappedTrivia = dict["triviaType"] as? String {
                if unwrappedTrivia == triviaType.rawValue {
                    if let question = Question(dict: dict) {
                        questions.append(question)
                    }
                }
                
            }
         }
        totalQuestion = questions.count
        print("You have \(questions.count) question")
    }
    
    func checkAnswer(usersAnswer: String, question: Question) {
        if usersAnswer == question.correctAnswer {
            score += 1
            print("Correct Answer. \n\(question.fact)")
        } else {
            print("Wrong answer. \n\(question.fact)")
        }
    }
    // Write a method that prints out the final score and total number of questions.
    func finalScore() {
        print("Thanks for playing trivia, your score is \(score) out of \(totalQuestion)")
    }
    
    // Write a method that resets the game if the player wishes to continue
    func reset() {
        score = 0
    }
    
    func slectTrivia(_ userResponse: String) { // "1"..."4"
        switch userResponse {
        case "1":
            createQuestions(.movieTrivia)
        case "2":
            createQuestions(.sportsTrivia)
        case "3":
            createQuestions(.musicTrivia)
        case "4":
            createQuestions(.nycTrivia)
        default:
            print("Trivia type unavailable")
        }
    }
    
    func space() {
        for _ in 0...70 {
            print()
        }
    }
}

