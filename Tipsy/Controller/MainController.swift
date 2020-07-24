//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class MainController : UIViewController {

    @IBOutlet weak var totalBill: UILabel!
    @IBOutlet weak var totalBillText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateButton(_ sender: UIButton) {
        performSegue(withIdentifier: "CalculateSegue", sender: self)
    
    }
    
}

