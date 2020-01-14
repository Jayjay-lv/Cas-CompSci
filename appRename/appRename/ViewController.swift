//
//  ViewController.swift
//  appRename
//
//  Created by jayjay venegas on 1/7/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    
    @IBOutlet weak var nameEntry: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let existingName: String? = try? String(contentsOf: getNameFileURL())
        greetingLabel.text = "Hello, \(existingName ?? "Pablo")"
    }

    
    func getNameFileURL() -> URL{
      let documentURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        return documentURL.appendingPathComponent("usernametxt")
        
    }
    

    @IBAction func rememberName(_ sender: Any) {
        let name = nameEntry.text!
       try! name.write(to: getNameFileURL(), atomically: true, encoding: .utf8)
        greetingLabel.text = "Hello \(name)!"
    }
    
    
    @IBAction func forgetName(_ sender: Any) {
        try? FileManager.default.removeItem(at: getNameFileURL())
        greetingLabel.text = "Wassssssup"
    }
    
    
}

