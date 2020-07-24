//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Jia Zheng Lua on 14/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

@IBAction func tof(_ sender: UIButton) {
       if sender.currentTitle! == "True" {
           if correct {
               userCorrect = true
               self.questionText.text = "Correct!"
               sender.backgroundColor = UIColor.green
           } else {
               self.questionText.text = "Wrong!"
               sender.backgroundColor = UIColor.red
           }
       } else {
           if correct {
               self.questionText.text = "Wrong!"
               sender.backgroundColor = UIColor.red
           } else {
               userCorrect = true
               self.questionText.text = "Correct!"
               sender.backgroundColor = UIColor.green
           }
       }

   }
