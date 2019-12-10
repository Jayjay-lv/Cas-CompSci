//
//  ViewController.swift
//  jsonDecodeApp
//
//  Created by Riley John Gibbs on 12/3/19.
//  Copyright © 2019 Riley John Gibbs. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    var jsonFileData: Data?
    var jsonFileString: String?
    
    // TODO: Come up with a better UI than just a single boring label.
    @IBOutlet weak var myLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
         let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        jsonFileData = try? Data(contentsOf: fileUrl!)
       

           let json = try? JSONSerialization.jsonObject(with:jsonFileData!, options: [])
        
        let dictionary: [String: Any]? = json as? [String: Any]
        
        var name = "placeholder"
        var hobbies = ["placeholder"]
        var age = 0
        var favoriteColor = "placeholder"
        
        
        if let data = jsonFileData {
           
          
            name = dictionary!["name"] as! String
            hobbies = dictionary!["hobbies"] as! [String]
            age = dictionary!["age"] as! Int
            
            favoriteColor = dictionary!["favoriteColor"] as! String
            

        }
        myLabel.text = ("Hello, my name is \(name). I am \(age) years old. My favorite color is \(favoriteColor), and my hobbies include: \(hobbies.joined(separator:",")).")
        
       
        
        

    }
    
}
