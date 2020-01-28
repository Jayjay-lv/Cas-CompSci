//
//  EditViewController.swift
//  recipeBookV2
//
//  Created by jayjay venegas on 1/23/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var recipeLabel: UILabel!
    @IBOutlet weak var ingriedientsInput: UITextField!
    
    @IBOutlet weak var recipeInput: UITextField!
    
    @IBOutlet weak var instructionsInput: UITextField!
    
    var selectedItem: recipeItem? = nil
    var recipeData: [recipeItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        recipeLabel.text = selectedItem?.recipe
        ingriedientsInput.text = selectedItem?.ingriedients
        instructionsInput.text = selectedItem?.instructions

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        if let selectedItem = selectedItem {
            selectedItem.ingriedients = ingriedientsInput.text ?? "nothing"
            selectedItem.instructions = instructionsInput.text ?? "just make it"
            selectedItem.recipe = recipeInput.text ?? "Huh"
        }
        saveRecipe()
    }
    
    
    
    
    
    
    func saveRecipe() {
        if let url = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false), let data = try? JSONEncoder().encode(recipeData) {
            do {
                try data.write(to: url.appendingPathComponent("recipes.json"))
            } catch {
                print("Failed to save")
            }
        } else {
            print("Could not prepare save")
        }
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
