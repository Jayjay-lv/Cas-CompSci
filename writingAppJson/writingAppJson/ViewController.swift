//
//  ViewController.swift
//  writingAppJson
//
//  Created by jayjay venegas on 1/10/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var enemiesInput: UITextField!
    
    @IBOutlet weak var dateInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let url = getFileURL(){
             let data = try? Data(contentsOf: url)
            if let data = data {
                let dict = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: String]
                nameInput.text = dict["name"]
                dateInput.text = dict["date"]
                enemiesInput.text = dict["enemies"]
            }
        }
       
    }
    
    func getFileURL() -> URL? {
        let docDirectory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        
        if docDirectory != nil{
            return docDirectory!.appendingPathComponent("saveFile.json")
        }
        return nil
    }

    @IBAction func saveApp(_ sender: Any) {
        let data: [String:String] = [
            "name": nameInput.text ?? "N/A",
            "date": dateInput.text ?? "N/A",
            "enemies": enemiesInput.text ?? "N/A"
        ]
        let url = getFileURL()
        if let jsonData = try? JSONSerialization.data(withJSONObject: data, options: []) {
            try! jsonData.write(to: url!)
        } else {
            print("Failed to Save")
        }
        
    }
    
    @IBAction func loadApp(_ sender: Any) {
    }
}

