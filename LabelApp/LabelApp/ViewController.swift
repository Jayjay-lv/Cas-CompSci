//
//  ViewController.swift
//  LabelApp
//
//  Created by jayjay venegas on 9/19/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Label1: UILabel!
    
    

    @IBOutlet weak var press: UIButton!
    
    var pressCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        pressCount += 1
        Label1.text = "The button has been pressed \(pressCount) times"
    }

}

