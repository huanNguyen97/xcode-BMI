//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by BSP Macbook on 3/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    // Properties
    var bmi: BMI?
    // End Prop
    
    // Methods
    // Normal Methods
    // Get BMI
    func getBMIValue() -> String {
        // The code below also mean if this bmi not nil
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    // End get
    
    // Get advice
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    // End get
    
    // Get color
    func getColor() -> UIColor {
        // If bmi really equal nil, it return to the default value
        return bmi?.color ?? UIColor.white
    }
    // End get
    // End Normal
    
    // Mutating Methods
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue >= 18.5 && bmiValue < 24.9 {
            print("normal weight")
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    // End Mutating
    // End Meth
}
