//
//  ViewController.swift
//  navigationBar
//
//  Created by harikanth on 10/17/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var timer = Timer()
    
    var time = 0

    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer(){
        
        time+=1
        
        timerLabel.text = "\(time)"
        
        
    }
    
    @IBAction func play(_ sender: AnyObject) {
        
       timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
        
        
    }

    @IBAction func pause(_ sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func stop(_ sender: AnyObject) {
        
        timer.invalidate()
        time = 0
        timerLabel.text = "\(time)"
        
    }
    
    @IBAction func lapButton(_ sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Table view Methods
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "Cell")
        cell.backgroundColor = self.view.backgroundColor
        cell.textLabel?.text = "Lap"
        cell.detailTextLabel?.text = "00:00:00"
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

}

