//
//  QuizModel.swift
//  Quizzler-iOS13
//
//  Created by Jia Zheng Lua on 14/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizModel {
    var correct : Bool
    var started = false
    var userAnswered = false
    var progressSpeed = 0.01
    var progressFull = 10.0
    var counter = 10.0
    var total = 0
    var score = 0

    mutating func checkAnswer(_ userInput : String) -> Bool {
        userAnswered = true
        if userInput == "True" {
            if correct {
                score += 1
                return true
            } else {
                return false
            }
        } else {
            if correct {
                return false
            } else {
                score += 1
                return true
            }
        }
    }
    
    mutating func updateCounter(_ controller : ViewController) {
        if counter > 0 {
            controller.progressBar.progress = Float(progressFull - counter) / Float(controller.progressFull)
            counter -= progressSpeed
            started = true
        } else if counter < 0 && started && !userAnswered{
            controller.progressBar.progress = Float(progressFull - counter) / Float(controller.progressFull)
            counter = progressFull
            print("Timer deactivated")

        } else if counter <= 0 && userAnswered {
            print("Timer deactivated")
            counter = progressFull
        }
        controller.progressBar.progress = Float(progressFull - counter) / Float(progressFull)
    }
    
    mutating func addTotal() {
        self.total += 1
    }
}
