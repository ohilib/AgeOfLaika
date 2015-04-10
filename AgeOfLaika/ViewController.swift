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
    


}

