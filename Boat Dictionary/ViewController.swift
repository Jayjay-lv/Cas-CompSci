//
//  ViewController.swift
//  Boat Dictionary
//
//  Created by jayjay venegas on 11/14/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var boat:Boat?

   
    @IBOutlet weak var boatNameLabel: UILabel!
    
    @IBOutlet weak var boatNameColor: UILabel!
    
    
    @IBOutlet weak var boatNameSize: UILabel!
    
    
    @IBOutlet weak var boatNamePower: UILabel!
    
    var boatName:String = ""
    var boatColor:String = ""
    var boatSize:String = ""
    var boatPower:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boatNameLabel.text = boatName
        boatNameColor.text = boatColor
        boatNameSize.text = boatSize
        boatNamePower.text = boatPower
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
