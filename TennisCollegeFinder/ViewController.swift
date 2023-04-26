//
//  ViewController.swift
//  TennisCollegeFinder
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreTextField: UITextField!
    @IBOutlet weak var sentenceLabel: UILabel!
    var collegeScores = ["Princeton": 1460...1570,
                         "University of Miami": 1300...1460,
                         "Illinois State": 1000...1200,
                         "MIT": 1500...1570,
                         "Stanford": 1440...1550,
                         "Carnegie Mellon": 1480...1560,
                         "University of California- Berkely": 1410...1420,
                         "University of Illinois- Urbana- Champaign": 1210...1470,
                         "Cornell University": 1450...1560,
                         "Georgia Tech": 1360...1540,
                         "University of Washington": 1200...1470,
                         "University of Texas- Austin": 1230...1500,
                         "California Institute of Technology": 1560...1600,
                         "Columbia University": 1500...1510,
                         "UCLA": 1410...1420,
                         "University of California- San Diego": 1350...1370,
                         "University of Michigan- Ann Arbor": 1430...1440,
                         "Harvard University": 1480...1580,
                         "University of Maryland- College Park": 1280...1470,
                         "University of Pennsylvania": 1490...1510,
                         "University of Wisconsin- Madison": 1300...1480,
                         "Johns Hopkins University": 1500...1510,
                         "Yale University": 1510...1520,
                         "Duke University": 1480...1570,
                         "University of Massachusetts- Amherst": 1200...1390,
                         "University of Southern California": 1430...1450,
                         "Brown University": 1410...1430,
                         "University of North Carolina- Chapel Hill": 1140...1380,
                         "Northwestern University": 1460...1560,
                         "Rice University": 1490...1570,
                         "University of California- Irvine": 1300...1320,
                         "University of California- Santa Barbara": 1340...1360,
                         "University of Chicago": 1510...1530,
                         "University of Virginia": 1420...1440,
                         "Northeastern University": 1390...1410,
                         "Ohio State University": 1240...1260,
                         "Pennsylvania State University- University Park": 1260...1270,
                         "University of Minnesota- Twin Cities": 1400...1420,
                         "New York University": 1450...1470,
                         "Rutgers, The State University of New Jersey--New Brunswick": 1020...1200,
                         "Texas A&M University--College Station": 1270...1280,
                         "Dartmouth College": 1440...1560]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func findCollege(scoreText: Int) {
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
    
    @IBAction func whenCollegeButtonPressed(_ sender: Any) {
        findCollege(scoreText: 400)
    }
}
