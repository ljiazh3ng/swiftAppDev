//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    var questionGenerator = QuestionGenerator(correct: false)
    var quizModel = QuizModel(correct: false)
    let progressFull = 10.0
    var correct = true
    var timer1 = Timer()
    var timer2 = Timer()
    var total = 0
    var score = 0
    var userCorrect = false
    override func viewDidLoad() {
        super.viewDidLoad()
        disableBtn()
        self.trueButton.layer.cornerRadius = 19
        self.falseButton.layer.cornerRadius = 19
        self.questionText.text = "Welcome to Quizler your test will begin shortly"
        activateTimer()
    }
    
    func activateTimer() {
        print("timer activated")
        self.variableReset()
        timer1 = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(runTest), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateProgressBar), userInfo: nil, repeats: true)
    }
    
    
    func variableReset() {
        self.enableBtn()
        self.userCorrect = false
    }
    
    @objc func updateProgressBar() {
        quizModel.updateCounter(self)
    }
    
    @objc func runTest() {
        self.variableReset()
        let qns = questionGenerator.generateQuestion()
        quizModel.addTotal()
        questionText.text = qns.0
        print(qns.1)
        quizModel.correct = qns.1
        
    }
        // Do any additional setup after loading the view.
    
    @IBAction func tof(_ sender: UIButton) {
        if quizModel.checkAnswer(sender.currentTitle!) {
            self.questionText.text = "Correct!"
            sender.backgroundColor = UIColor.green
        } else {
            self.questionText.text = "Wrong!"
            sender.backgroundColor = UIColor.red
        }
        disableBtn()
    }
    
    func disableBtn() {
        trueButton.isEnabled = false
        trueButton.alpha = 0.5
        falseButton.isEnabled = false
        falseButton.alpha = 0.5
    }
    
    func enableBtn() {
        self.trueButton.isEnabled = true
        self.trueButton.alpha = 1
        self.falseButton.isEnabled = true
        self.falseButton.alpha = 1
        self.trueButton.backgroundColor = UIColor.clear
        self.falseButton.backgroundColor = UIColor.clear
    }
    
    
    @IBAction func changeView(_ sender: UIButton) {

        performSegue(withIdentifier: "toSecondarySegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondarySegue" {
            let destinationVC = segue.destination as! SecondaryViewController
            destinationVC.currentScore = quizModel.score
        }
    }
    
    
}


