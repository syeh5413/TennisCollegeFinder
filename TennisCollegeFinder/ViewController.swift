//
//  ViewController.swift
//  TennisCollegeFinder
//
//  Created by Sam Yeh on 4/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreTextField: UITextField!
    var colleges = ["Princeton": 1460...1570,
                    "University of Miami": 1300...1460,
                    "Illinois State": 1000...1200]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func whenCollegeButtonPressed(_ sender: Any) {
//        for college in colleges {
//            if ((colleges[college.value]?.contains(Int(scoreTextField.text!)!)) != nil) {
//
//            }
//        }
    }
}

