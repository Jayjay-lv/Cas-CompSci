//
//  ViewController.swift
//  IcecreamPicker
//
//  Created by jayjay venegas on 10/21/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return icecreamFlavors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return icecreamFlavors[row] + " " + icecreamPrices[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var icecreamTypes: UIPickerView!
    
    @IBOutlet weak var Label: UILabel!

    let icecreamFlavors = ["Vanilla Bean", "Mocha", "Chunky Monke", "Rose", "EXTRA DARK CHOCOLATE"]
    
    let icecreamPrices = ["6.00$","10.00$", "15.00$", "50.00$", "100.00$"]
    
    
    @IBAction func ordericecream(_ sender: UIButton) {
        let row =
        icecreamTypes.selectedRow(inComponent: 0)
        Label.text = "You ordered a: "+icecreamFlavors[row] + " icecream, it costs:"+icecreamPrices[row]
    }
    
}

