//
//  ViewController.swift
//  RecipeBook
//
//  Created by jayjay venegas on 1/23/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var recipeLabel: UILabel!
    
    @IBOutlet weak var recipeInput: UITextField!
    
    @IBOutlet weak var ingriedientsLabel: UILabel!
    
    @IBOutlet weak var ingriedientsInput: UITextField!
    
    @IBOutlet weak var instructionsLabel: UILabel!
    
    @IBOutlet weak var instructionsInput: UITextField!
    
    var dictionary: [String:String] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newURL()
        
    }
    
    
    
    func getFileURL() -> URL? {
        let docDirectory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        
        if docDirectory != nil{
            return docDirectory!.appendingPathComponent("saveFile.json")
        }
        return nil
    }
    
    
    




func newURL() {
    if let url = getFileURL(){
        let data = try? Data(contentsOf: url)
        if let data = data {
            var dictionary = try! JSONSerialization.jsonObject(with: data, options: [[]]) as! [String: String]
        
            recipeInput.text = dictionary["recipe"]
            ingriedientsInput.text = dictionary["ingriedients"]
            instructionsInput.text = dictionary["instructions"]
            
        }
    }
}

    @IBAction func save(_ sender: Any) {
        let data: [String: String] = [
            "recipe": recipeInput.text ?? "N/A",
            "ingriedients": ingriedientsInput.text ?? "N/A",
            "instructions": instructionsInput.text ?? "N/A"
        ]
        
        let url = getFileURL()
        if let jsonData = try?
            JSONSerialization.data(withJSONObject: data, options: []) {
            try! jsonData.write(to: url!)
        } else{
            print ("Failed to Save")
        }
    }
    
    
    

}





