//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Andrae Henry on 11/6/19.

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color : UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiAdvice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        bmiAdvice.text = advice
        view.backgroundColor = color

       
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
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
