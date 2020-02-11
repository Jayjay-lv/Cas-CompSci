//
//  ViewController.swift
//  DynamicButtons
//
//  Created by jayjay venegas on 2/7/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var adventureButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        adventureButton.addTarget(self, action: #selector(addPicture), for: .touchUpInside)
    }
    
    @objc func showAlert(sender: UIButton) {
        let alert = UIAlertController(title: "Hey! Listen!", message: "It's dangerous out there. Take this.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Adventure", style: .default, handler: { (_) in return} ))
        self.present(alert, animated: true, completion: {})
    }
    
    
   @objc func addButton() {
        let newButton = UIButton()
        newButton.setTitle("Explore", for: .normal)
    
    newButton.setTitleColor(UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 0), for: .normal)
    
    newButton.addTarget(self, action: #selector(addPicture), for: .touchUpInside)
    
    
        stackView.addArrangedSubview(newButton)
    }
    
    
    @objc func addPicture() {
        let pictureName = "Image"
        let newPicture = UIImage(named: pictureName)
        let imageView = UIImageView(image: newPicture!)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        stackView.addSubview(imageView)
        
    }

}

