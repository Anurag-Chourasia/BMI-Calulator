//
//  CalculateBMIViewController.swift
//  BMI-Calculator
//
//  Created by Anurag Chourasia on 10/05/23.
//

import UIKit

class CalculateBMIViewController: UIViewController {

    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    @IBOutlet var calculateButton: UIButton!
    
    var brain = CalulatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButton.layer.cornerRadius = 20
    }

    @IBAction func heightSliderMoved(_ sender: UISlider) {
        heightLabel.text = String(format: "%0.2f", sender.value) + " m"
    }
    
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        weightLabel.text = String(format: "%0.0f", sender.value) + " Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value

        brain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            
            let segueVC = segue.destination as! ResultViewController
            
            segueVC.calculatedBMI = brain.getBMIValue()
            segueVC.advice = brain.getAdvice()
            segueVC.color = brain.getColor()
            
        }
    }
}

