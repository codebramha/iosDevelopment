//
//  ViewController.swift
//  stopWatch01
//
//  Created by harikanth on 10/26/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 0
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        time += 1
        timerLabel.text = ("\(time)")
    }
    
    @IBAction func pause(_ sender: UIButton) {
        timer.invalidate()
    }
    @IBAction func stop(_ sender: UIButton) {
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
    }
    @IBAction func play(_ sender: UIButton) {
        
        
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

