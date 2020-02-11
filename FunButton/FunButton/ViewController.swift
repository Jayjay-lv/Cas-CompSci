//
//  ViewController.swift
//  FunButton
//
//  Created by jayjay venegas on 2/11/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kobieButton: NamedButton!
    
    @IBOutlet weak var matthewButton: NamedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kobieButton.name = "Kobie"
        
        matthewButton.name = "Matt"
    }


    @IBAction func buttonPress(_ sender: Any) {
        let message: String
        if let sender = sender as? NamedButton {
            message = "Hello my name is \(sender.name)"
        } else {
            message = "Hello, I dont know who I am"
        }
        let alert = UIAlertController(title: "Hey", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

