//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softTiming = 5
    let mediumTiming = 7
    let hardTiming = 12
    let hardnessDictionary = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var counter = Float(0)
    var progressFull = Float(1)
    var started = false
    var hardness = ""
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func softness(_ sender: UIButton) {
        hardness = sender.currentTitle!
//        if hardness == "Soft" {
//            print(softTiming)
//        } else if hardness == "Medium" {
//            print(mediumTiming)
//        } else {
//            print(hardTiming)
//        }
        
        counter = Float(hardnessDictionary[hardness]!)
        progressFull = Float(hardnessDictionary[hardness]!)

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.display.text = "How do you like your eggs?"
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }



    @IBOutlet weak var display: UILabel!
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            started = true
            self.progressBar.progress = Float(progressFull - counter) / Float(progressFull)
            //self.display.text = "How do you like your eggs?"
            print("\(counter) seconds until your egg is done")
            counter -= 0.01
        } else if counter <= 0 && started {
            self.progressBar.progress = Float(progressFull - counter) / Float(progressFull)
            self.display.text! = "Your \(hardness.lowercased()) boil eggs are done!"
            self.progressBar.progress = Float(progressFull - counter) / Float(progressFull)

            
        }
        
    }
}
