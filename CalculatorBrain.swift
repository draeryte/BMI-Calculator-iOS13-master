//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Andrae Henry on 11/6/19.
//  Jamaican Code is best


import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height*height)
        
        if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Eat some candy bars", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        }
        
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Yuh body good friend. Gwaan a di beach", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
                }
        
        else {
           bmi = BMI(value: bmiValue, advice: "Eat less food fatty!", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
        
        
          
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String (format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}


