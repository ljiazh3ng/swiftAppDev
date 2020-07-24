//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    var currStory = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStart()

    }
    
    func loadStart() {
        self.storyLabel.text = "Welcome to Destini, your story will begin shortly"
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0, execute: {
            self.loadStory()
        })
    }
    
    func loadStory() {
        self.storyLabel.text = storyBrain.storyList[currStory].title
        self.choice1Button.setTitle( storyBrain.storyList[currStory].choice1
            , for :.normal)
        self.choice2Button.setTitle( storyBrain.storyList[currStory].choice2
            , for :.normal)
    }
    


    @IBAction func choicesBtn(_ sender: UIButton) {
        self.currStory = storyBrain.getDirections(sender.currentTitle!, self.currStory)
        loadStory()
    }
    
}

