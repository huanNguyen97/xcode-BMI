//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by BSP Macbook on 3/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // Initialize variable
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    // End Variable

    // Initialize View
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    // End View
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color
    }
    
    // Initialize Action
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Go back with the previous nearly VC have to changed
        self.dismiss(animated: true, completion: nil)
    }
    // End Action
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
