//
//  DetailsViewController.swift
//  HardCoding
//
//  Created by jayjay venegas on 2/3/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailsTextView: UITextView!
    
    var characterClicked = ["name":"Pikachu", "description": "pokemon", "alignment": "Good"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
        detailsTextView.text = "\(characterClicked["name"] ?? "somebody") is \(characterClicked["description"] ?? "cool") they are \(characterClicked["alignment"] ?? "dead")."
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
