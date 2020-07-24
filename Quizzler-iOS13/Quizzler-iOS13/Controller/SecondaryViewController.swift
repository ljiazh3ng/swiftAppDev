//
//  SecondaryViewController.swift
//  Quizzler-iOS13
//
//  Created by Jia Zheng Lua on 20/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController {
    @IBOutlet weak var scoreText: UILabel!
    var currentScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scoreText.text = String(currentScore)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
