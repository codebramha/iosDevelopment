//
//  ReceivingVC.swift
//  DelegateMayhem
//
//  Created by harikanth on 10/19/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentdelegate {

    @IBOutlet var receivingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func userDidEnterData(data: String) {
        receivingLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }

}

