//
//  ViewController.swift
//  HardCoding
//
//  Created by jayjay venegas on 2/3/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! DetailsViewController
        let button = sender as! UIButton
        if button.titleLabel!.text! == "Pikachu" {
            dvc.characterClicked = ["name": "Pikachu", "description": "short", "alignment": "good",
            ]
        } else if button.titleLabel!.text! == "Ash" {
            dvc.characterClicked = ["name":"Ash","description":"average","alignment":"Bad"]
        } else if button.titleLabel!.text! == "Squirtle"{
            dvc.characterClicked = [
                "name":"Squirtle","description":"round","alignment":"bad"]
        }
    }

}

