//
//  ViewControllerMenu.swift
//  ButtonGuessingGame
//
//  Created by Jayjay Venegas on 2/12/20.
//  Copyright © 2020 Jayjay Venegas. All rights reserved.
//

import UIKit

class ViewControllerMenu: UIViewController {

    var totalButtons: Int?
    
    @IBAction func easyButton(_ sender: Any) {
        return totalButtons = 10    }
    @IBAction func mediumButton(_ sender: Any) {
        return totalButtons = 25
    }
    @IBAction func hardButton(_ sender: Any) {
        return totalButtons = 50
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.buttonsForGame = totalButtons
        vc.rightNumber = "\(Int.random(in: 1 ... totalButtons!))"
    }

}
