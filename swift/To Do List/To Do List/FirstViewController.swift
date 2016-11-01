//
//  FirstViewController.swift
//  To Do List
//
//  Created by harikanth on 10/31/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

var toDoList = [String]()


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var toDoListTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (UserDefaults.standard.object(forKey: "toDoList") != nil) {
            
        toDoList = ((UserDefaults.standard.object(forKey: "toDoList") as! NSArray) as! [String])
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return toDoList.count
        
    }
    
    
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            toDoList.remove(at: indexPath.row)
            
            UserDefaults.standard.set(toDoList, forKey: "toDoList")
            
            toDoListTable.reloadData()
        }
        
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        
        toDoListTable.reloadData()
        
    }
   


}

