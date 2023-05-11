//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Anurag Chourasia on 11/05/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var calculatedBMILabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var recalculateButton: UIButton!
    @IBOutlet var stackView: UIStackView!
    
    var calculatedBMI: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        adviceLabel.textColor = color
        
        recalculateButton.layer.cornerRadius = 20
        
        calculatedBMILabel.text = calculatedBMI
        
        adviceLabel.text = advice
        
        print("ViewDidLoad")
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    


}
