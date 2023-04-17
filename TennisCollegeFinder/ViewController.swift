//
//  ViewController.swift
//  TennisCollegeFinder
//
//  Created by Sam Yeh on 4/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ratingTextField: UITextField!
    var colleges: [String] = []
    var rating: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let ratingText = ratingTextField.text {
            rating = Double(ratingText)
        }
        
        print(rating)
    }
    
    
}

