//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Anurag Chourasia on 11/05/23.
//

import UIKit

struct CalulatorBrain{
    
    var bmiValue : BMI?
    
    mutating func calculateBMI(height : Float, weight : Float){
        let bmi = weight / (height * height)
        
        if bmi < 18.5{
            bmiValue = BMI(value: bmi, color: UIColor(red: 0.05, green: 0.89, blue: 0.99, alpha: 1.00)/*Blue*/, advice: "Eat More, work less :(")
        }else if bmi >= 18.5 && bmi <= 24.9{
            bmiValue = BMI(value: bmi, color: UIColor(red: 0.50, green: 0.83, blue: 0.53, alpha: 1.00)/*Green*/, advice: "Fine like a wine ;)")
        }else{
            bmiValue = BMI(value: bmi, color: UIColor(red: 1.00, green: 0.31, blue: 0.33, alpha: 1.00)/*Red*/, advice: "Startig working out buddy :>")
        }
    }
    
    func getBMIValue() -> String{
        let bmi = String(format: "%0.1f", bmiValue?.value ?? 0.0)
        return bmi
    }
    
    func getColor() -> UIColor{
        let color = bmiValue?.color ?? .white
        return color
    }
    
    func getAdvice() -> String{
        let advice = bmiValue?.advice ?? "All Good!!!"
        return advice
    }
    
    
    
}
