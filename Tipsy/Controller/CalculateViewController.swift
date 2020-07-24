//
//  CalculateViewController.swift
//  Tipsy
//
//  Created by Jia Zheng Lua on 20/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
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
