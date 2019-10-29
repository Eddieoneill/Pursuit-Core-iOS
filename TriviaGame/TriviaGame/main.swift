//
//  main.swift
//  TriviaGame
//
//  Created by Edward O'Neill on 10/21/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import Foundation


let game = Game()
var playAgain = true

repeat {
    print("Select one of the following trivia topic \n1. Movie Trivia \n2. Sports Trivia \n3. Music Trivia \n4. NYC Trivia")
    let userInput = readLine() ?? "0"
    game.slectTrivia(userInput)
    game.space()
    repeat {
        guard let usedQuestion = game.getQuestion() else { break }
        
        print(usedQuestion.questionPrompt)
        print(usedQuestion.choices)
        let userAnswer = readLine()?.lowercased() ?? "0"
        game.checkAnswer(usersAnswer: userAnswer, question: usedQuestion)
        game.space()
        
    } while game.hasMoreQuestions
    
    game.finalScore()
    game.reset()
    
    print("Would you like to play again? \n \n Yes/No")
    let finalUserInput = readLine()?.lowercased() ?? "no"
    
    if finalUserInput != "yes" {
        playAgain = false
    }
} while playAgain


print("Thank you for playing! \nGood Bye!")
