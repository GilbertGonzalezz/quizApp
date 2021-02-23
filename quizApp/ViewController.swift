//
//  ViewController.swift
//  quizApp
//
//  Created by Karan Gandhi on 2/18/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questions: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    //Structures or Classes allow you to store two different data types together
    
    var questionBank = [["4 + 2 = 7", "False"], ["5 + 3 = 8","True"],[ " 1 + 1 = 3", "False"]]
    
    
    
    
    
    
    
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
        
        
    }
    
    func updateUI(){
        if questionNumber + 1 < questionBank.count {
      
            questions.text = questionBank[questionNumber][0]
        }
        
    }

    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        questionNumber += 1
        
        let userInput = sender.currentTitle!
        let actualAnswer = questionBank[questionNumber][1]
        updateUI()
        
        
        
        
        
        
        
        
    }
  

}

