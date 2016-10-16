//
//  ViewController.swift
//  Hello world
//
//  Created by harikanth on 8/29/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    

    @IBAction func submit(sender: AnyObject) {
        
        print("Button Tapped!")
        
        label.text = textField.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Whats up guys!")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

