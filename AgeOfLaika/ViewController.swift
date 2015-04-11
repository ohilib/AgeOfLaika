//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Philip Pang on 10/4/15.
//  Copyright (c) 2015 Philip Pang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DogYearsLabel: UILabel!
    @IBOutlet weak var EnterHumanAgeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ConvertToDogYearsButtonPressed(sender: AnyObject) {
        let stringFromTextField = EnterHumanAgeTextField.text
        let optionalNewHumanAge = stringFromTextField.toInt()
        let intFromOptional = optionalNewHumanAge!
        
        DogYearsLabel.text = "\(intFromOptional * 7)" + " In Dog Years"
        
        DogYearsLabel.hidden = false
        EnterHumanAgeTextField.resignFirstResponder()
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: AnyObject) {
        let stringFromTextField = EnterHumanAgeTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        DogYearsLabel.hidden = false
        DogYearsLabel.text = "\(realDogYears)" + "Real Human Years"
        EnterHumanAgeTextField.resignFirstResponder()
        
    }


}

