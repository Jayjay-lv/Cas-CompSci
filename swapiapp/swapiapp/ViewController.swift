//
//  ViewController.swift
//  swapiapp
//
//  Created by jayjay venegas on 12/11/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newLabel: UILabel!
    
    @IBOutlet weak var pressButton: UIButton!
    
    
    @IBAction func pressButton(_ sender: Any) {
        let url: URL = URL(string: "https://swapi.co/api/people/1/")!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
        let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
        let dictionary: [String: Any]? = json as? [String: Any]
                if let dictionary = dictionary {
        let name: String? = dictionary["name"] as? String
                    if let name = name {
        newLabel.text = name
                    }
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

