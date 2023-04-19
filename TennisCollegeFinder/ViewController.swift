//
//  ViewController.swift
//  TennisCollegeFinder
//
//  Created by Sam Yeh on 4/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreTextField: UITextField!
    var collegeScores = ["Princeton": 1460...1570,
                         "University of Miami": 1300...1460,
                         "Illinois State": 1000...1200]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func whenCollegeButtonPressed(_ sender: Any) {
        if let scoreText = scoreTextField.text, let score = Double(scoreText) {
            for (collegeName, scoreRange) in collegeScores {
                if scoreRange.contains(Int(score)) {
                    print("You qualify for \(collegeName)!")
                    return
                }
            }
            print("Sorry, you don't qualify for any colleges.")
        } else {
            print("Invalid score.")
        }
    }
}

