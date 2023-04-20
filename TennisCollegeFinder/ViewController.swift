//
//  ViewController.swift
//  TennisCollegeFinder
//
//  Created by Sam Yeh on 4/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreTextField: UITextField!
    @IBOutlet weak var sentenceLabel: UILabel!
    @IBOutlet weak var collegeImage: UIImageView!
    var collegeScores = ["Princeton": 1460...1570,
                         "University of Miami": 1300...1460,
                         "Illinois State": 1000...1200]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func whenCollegeButtonPressed(_ sender: Any) {
        if let scoreText = scoreTextField.text, let score = Int(scoreText) {
            for (collegeName, scoreRange) in collegeScores {
                if scoreRange.contains(Int(score)) {
                    sentenceLabel.text = "Congrats! Based on your score of \(score), you qualify for \(collegeName)."
                    return
                }
            }
            sentenceLabel.text = "Sorry, you don't qualify for any colleges."
        } else {
            sentenceLabel.text = "You entered an invalid score."
        }
    }
}

