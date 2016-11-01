//
//  ViewController.swift
//  TimesTables
//
//  Created by harikanth on 10/30/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var sliderValue: UISlider!

    @IBAction func sliderMoved(_ sender: AnyObject) {
        
        table.reloadData()
      
    }
    
    @IBOutlet var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
        
    }
    
    
    

    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let timesTable = Int( sliderValue.value * 20 )
        
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        
        return cell
        
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

