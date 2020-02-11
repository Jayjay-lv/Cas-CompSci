//
//  KingStackViewController.swift
//  dynamicStackView
//
//  Created by jayjay venegas on 2/6/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class KingStackViewController: UIViewController {

    var labelCount = 5
    
    @IBOutlet weak var lordStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let labels = (1...labelCount).map({ (x) -> UILabel in
            let newLabel = UILabel()
            newLabel.text = "Hello \(x)"
            return newLabel
        })
        for (x ,label) in labels.enumerated() {
            label.textAlignment = .center
            lordStackView.addArrangedSubview(label)
            let constraint = NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: labels[0], attribute: .height, multiplier: 1, constant: 1)
            if label != labels[0] {
            lordStackView.addConstraint(constraint)
            }
        }
    
    }
    
}
