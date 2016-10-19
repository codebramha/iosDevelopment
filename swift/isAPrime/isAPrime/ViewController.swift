//
//  ViewController.swift
//  isAPrime
//
//  Created by harikanth on 10/17/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var numberField: UITextField!
    
    @IBAction func primeButton(_ sender: AnyObject) {
        
        if let number = Int(numberField.text!) {
            
            var isPrime = true
            
            if number == 1 {
                
                isPrime = false
                
            }
            
            if number != 2 && number != 1{
                
                for i in 2 ..< number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                }
            }
            
            if isPrime {
                
                textField.text = ("\(number) is prime")
                
            } else { textField.text = "\(number) is not prime" }
            
        }   else { textField.text = "Please enter a whole number"}
        
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

