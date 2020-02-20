//
//  ButtonViewController.swift
//  FunButton
//
//  Created by jayjay venegas on 2/19/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    var totalbuttons: Int?
    
    
    @IBAction func easy(_ sender: Any) {
        return totalbuttons = 10
    }
    
    @IBAction func medium(_ sender: Any) {
        return totalbuttons = 25
    }
    
    @IBAction func hard(_ sender: Any) {
        return totalbuttons = 50
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.buttonsForGame = totalbuttons
        vc.rightNumber = "\(Int.random(in: 1 ... totalbuttons!))"
    }

}
