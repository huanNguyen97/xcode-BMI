//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()

    // Initialize View's
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    // End Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Initialize Event
    // Change heightSlider
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    // End Changed
    
    // Change weightSlider
    @IBAction func wightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "kg"
    }
    // End Change
    
    // Press calculate Button
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        // Change view controller scene on this code
        self.performSegue(withIdentifier: "goToResult", sender: self)
        // End Change
    }
    // End Press
    
    // Prepare is override func
    // - Input the value of param from this VC to other VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // If the next VC is goToResult
        // - Make sure bmiValue = self.bmiValue have declared on the top
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    // End Event
}

