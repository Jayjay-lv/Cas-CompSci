//
//  ViewController.swift
//  recipeBookV2
//
//  Created by jayjay venegas on 1/23/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
 
    var recipeData: [recipeItem] = []

    @IBOutlet weak var recipePicker: UIPickerView!
    
    @IBOutlet weak var recipeLabel: UILabel!
    
    @IBOutlet weak var ingriedientsLabel: UILabel!
    
    @IBOutlet weak var InstructionsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        recipePicker.delegate = self
        recipePicker.dataSource = self
        
        if let oldData = load() {
            recipeData = oldData
        } else {
            for i in 0...5 {
                let recipe = ["Recipe 1", "Recipe 2", "Recipe 3", "Recipe 4", "Recipe 5", "Recipe 6"][i]
    recipeData.append(recipeItem(recipe:recipe, ingriedients: "none", instructions:"none"))
            }
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func load() ->[recipeItem]? {
        if let url = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false), let data = try? Data(contentsOf: url.appendingPathComponent("recipes.json")) {
            let recipeData = try? JSONDecoder().decode([recipeItem].self, from: data)
            return recipeData
        }
        return nil
    }
    
    

    override func viewWillAppear(_ animated: Bool){
    pickerView(recipePicker, didSelectRow: recipePicker.selectedRow(inComponent: 0), inComponent: 0)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? EditViewController {
            destination.recipeData = recipeData
            let itemIndex = recipePicker.selectedRow(inComponent: 0)
            destination.selectedItem = recipeData[itemIndex]
        }
    }
    
    
    
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return recipeData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Recipe \(recipeData[row].recipe)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let recipeItem = recipeData[row]
        recipeLabel.text = " \(recipeItem.recipe)"
        ingriedientsLabel.text = recipeItem.ingriedients
        InstructionsLabel.text = recipeItem.instructions
    }



}

