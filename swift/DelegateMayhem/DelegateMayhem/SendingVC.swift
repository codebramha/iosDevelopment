//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by harikanth on 10/19/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

protocol DataSentdelegate {
    
    func userDidEnterData(data: String)
    
    
}

class SendingVC: UIViewController {

   
    @IBOutlet var dataEntryTextField: UITextField!
    var delegate: DataSentdelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    @IBAction func sendBtnWasPressed(_ sender: AnyObject) {
        
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
