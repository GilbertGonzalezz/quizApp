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
    
//    var questionBank = [["4 + 2 = 7", "False"], ["5 + 3 = 8","True"],[ " 1 + 1 = 3", "False"]]
    
    
    var quizzbrain = QuizBrain()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
        
        
    }
    
    @objc func updateUI(){
        
        questions.text = quizzbrain.questionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizzbrain.progressStatus()
        
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {

        let userInput = sender.currentTitle!
        
        let checkFile = quizzbrain.checkAnswer(userInput)
        
        if checkFile {
            sender.backgroundColor = UIColor.green
            
        }
        
        else {
            sender.backgroundColor = UIColor.red
        }
        
        
        
        
        quizzbrain.nextQuestion()

        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)

        
        
        
    }
  


    }

