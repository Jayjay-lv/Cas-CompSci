//
//  secondViewController.swift
//  FunButton
//
//  Created by jayjay venegas on 2/12/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        for i in 1...50 {
            let newLabel = UILabel()
            newLabel.text = "Label \(i)"
            newLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
            newLabel.textAlignment = .center
            stackView.addArrangedSubview(newLabel)
        }
        stackView.frame = CGRect(x: 0, y: 0, width: 200, height: 30*50)
        scrollView.contentSize = CGSize(width: 200, height: 30*50)
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
