//
//  ViewController.swift
//  dictionary2
//
//  Created by jayjay venegas on 11/5/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var Definition: UILabel!
    
    var vocabWord:String?
    var vocabDefinition:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TitleLabel.text = vocabWord
        Definition.text = vocabDefinition
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
