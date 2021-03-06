//
//  ViewController.swift
//  ButtonGuessingGame
//
//  Created by Jayjay Venegas on 2/12/20.
//  Copyright © 2020 Jayjay Venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var buttonsForGame: Int?
    var rightNumber: String?
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...buttonsForGame! {
            let newButton = UIButton()
            newButton.setTitle("Button \(i)", for: .normal)
            newButton.frame = CGRect(x: 0, y: 0, width: 363, height: 50)
            newButton.setTitleColor(UIColor(displayP3Red: 0, green: 1, blue: 0, alpha: 1), for: .normal)
            newButton.backgroundColor = UIColor(red: 255/255, green: 20/255, blue: 147/255, alpha: 1)
            newButton.addTarget(self, action: #selector(whichButtonWasClicked), for: .touchUpInside)
            stackView.addArrangedSubview(newButton)
        }
        stackView.frame = CGRect(x: 0, y: 0, width: 363, height: (50 * buttonsForGame!))
        scrollView.contentSize = CGSize(width: 363, height: (50 * buttonsForGame!))
    }
    
    @objc func whichButtonWasClicked(_ sender: UIButton) {
        var numOfButton: String?
        let buttonTitle = sender.titleLabel?.text!
            if buttonTitle!.count == 8 {
            numOfButton = String(buttonTitle!.suffix(1))
            } else {
            numOfButton = String(buttonTitle!.suffix(2))
            }
        if numOfButton == rightNumber! {
           correctGuesss()
        } else {
            wrongGuess()
        }}

    @objc func correctGuesss() {
        let alert = UIAlertController(title: "Good Job!", message: "You guessed the right number", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again!", style: .default, handler: {(_) in return}))
        self.present(alert, animated: true, completion: {})
    }
    @objc func wrongGuess() {
        let alert = UIAlertController(title: "Try Again", message: "You guessed wrong", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: {(_) in return}))
        self.present(alert, animated: true, completion: {})
    }}

