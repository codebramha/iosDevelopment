//
//  ViewController.swift
//  How Many Fingers
//
//  Created by harikanth on 9/13/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuessTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
 
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
                if diceRoll == userGuessTextField.text{
            resultLabel.text = "You are right!"
        } else  {
            resultLabel.text = "It was a" + diceRoll
        }
    }
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

