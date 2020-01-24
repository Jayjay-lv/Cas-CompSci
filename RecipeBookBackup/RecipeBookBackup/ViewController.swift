//
//  ViewController.swift
//  RecipeBookBackup
//
//  Created by jayjay venegas on 1/23/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    var recipeData: [recipeItem] = []
    
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        recipePicker.delegate = self
        // Do any additional setup after loading the view.
    }


}

