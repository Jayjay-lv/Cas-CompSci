//
//  ViewController.swift
//  BirthdayApp
//
//  Created by jayjay venegas on 9/19/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BirthLabel: UILabel!
    

    @IBOutlet weak var BirthdayYet: UISwitch!
    
    @IBOutlet weak var ageDisplay: UILabel!
    
    @IBOutlet weak var YearBorn: UILabel!
    
    @IBOutlet weak var GreetingLabel: UILabel!
    
    var age = 0
    
    var newAge = 0

    var currentYear = 2019
    
    override func viewDidLoad() {
        super.viewDidLoad()
         GreetingLabel.text = "Find your age"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AgePlusButton(_ sender: UIButton) {
        age += 1
        ageDisplay.text = "\(age)"
    }
    
    @IBAction func AgeMinusButton(_ sender: UIButton) {
        age -= 1
        ageDisplay.text = "\(age)"
    }
    @IBAction func YearCalculator(_ sender: UIButton) {
        let yearBorn = currentYear - age + newAge
        YearBorn.text = "You were born in \(yearBorn)"
    }
    
    @IBAction func BirthdaySwitch(_ sender: UISwitch) {
        if BirthdayYet.isOn {
            newAge = 0
        } else {
            newAge = -1
        }
    }
    
}


