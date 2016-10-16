//
//  ViewController.swift
//  Cat Years
//
//  Created by harikanth on 8/29/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet var catAgeTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    @IBAction func findAge(sender: AnyObject) {
        
        var catAge = Int(catAgeTextField.text!)!
        
        if (catAge > 0)
        {
        
        catAge = catAge * 7
        
        resultLabel.text = "Your cat is \(catAge) in cat years"}
        else
        {
         resultLabel.text = "Please enter the age of your cat."
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

