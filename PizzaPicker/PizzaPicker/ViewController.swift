//
//  ViewController.swift
//  PizzaPicker
//
//  Created by jayjay venegas on 10/16/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pizzaFlavors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pizzaFlavors[row]
    }
    

    @IBOutlet weak var pizzaTypes: UIPickerView!
    
    @IBOutlet weak var Label: UILabel!
    
    let pizzaFlavors = ["Hawaiian", "Meat Lovers", "Greek", "Cheese", "Vegetarian"]
    
    
    @IBAction func orderPizza(_ sender: UIButton) {
        let row = pizzaTypes.selectedRow(inComponent: 0)
        Label.text = "You ordered a: "+pizzaFlavors[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


  
    
}

