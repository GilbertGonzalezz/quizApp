//
//  QuixBrain.swift
//  quizApp
//
//  Created by Gilbert Gonzalez on 2/23/21.
//

import Foundation

struct QuizBrain{
    
    var questionBank = [Questions(text: "4 + 2 = 7", answer: "False"),Questions(text: "5 + 3 = 8", answer: "True") , Questions(text:  "1 + 1 = 3", answer: "False")]
    
    
    
    var questionNumber = 0

    func checkAnswer(_ userInput : String) -> Bool {
        
        if userInput == questionBank[questionNumber].answer
        {
            return true
        }
        else {
            return false
        }
    }
}
