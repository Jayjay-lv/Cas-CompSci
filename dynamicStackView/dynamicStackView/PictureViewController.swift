//
//  PictureViewController.swift
//  dynamicStackView
//
//  Created by jayjay venegas on 2/6/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {
    //what do I link function too?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToNext" {
            if let destination = segue.destination as? DynamicViewController {
            // you can pass value to destination view controller
                
                // destination.nomb = arrayNombers[(sender as! UIButton).tag] // Using button Tag
            }
        }
    }
    
    @IBOutlet weak var buttonView: UIStackView!
    
    var buttonCount = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
        
        let buttons = (1...buttonCount).map({(x) in UIButton() })
        for button in buttons {
            button.setTitle("Click here for prize!", for: .normal)
            button.setTitleColor(UIColor(displayP3Red: 1, green: 0, blue: 1, alpha: 1), for: .normal)
            
            buttonView.addArrangedSubview(button)
            let constraint = NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: buttons[0], attribute: .height , multiplier: 1, constant: 1)
            if button != buttons[0] {
                buttonView.addConstraint(constraint)
            }
        }
        
        
    
        
        
        /*
        let buttons = (1...buttonCount).map({ (x) -> UIButton in
            let newButton = UIButton()
              newButton.setTitle("Button \(x)!", for: .normal)
            
           return newButton
  })
 
        for ( _ ,button) in buttons.enumerated() {
            button.setImage(UIImage(named: "image")!, for: .normal)
       /*onstraint = NSLayoutConstraint(item: buttons, attribute: .height, relatedBy: .equal, toItem: buttons[0], attribute: .height, multiplier: 1, constant: 1)
        if button != buttons[0] {
            buttonView.addConstraint(constraint)
             } */

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


   @objc func addButton() {
        let newButton = UIButton()
        newButton.setTitle("New!", for: .normal)
        
        newButton.setTitleColor(UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 0), for: .normal)
        
        newButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        
        
        buttonView.addArrangedSubview(newButton)
    }
 
 */
}
}




class DynamicViewController: UIViewController {
    
    var strings: [String]!
    
    override func loadView() {
        // super.loadView()   // DO NOT CALL SUPER
        
        view = UIView()
        view.backgroundColor = .lightGray
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        
        for string in strings {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = string
            stackView.addArrangedSubview(label)
        }
    }
}
