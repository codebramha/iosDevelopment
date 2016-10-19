//
//  ViewController.swift
//  howManyFingers
//
//  Created by harikanth on 10/17/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var userGuessTextField: UITextField!

    @IBAction func guess(_ sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        let userGuess = (userGuessTextField.text)
        
       
            if diceRoll == userGuess {
           resultLabel.text = "You are right"
            } else {
            resultLabel.text = "Wrong its \(diceRoll)"
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     }



}

