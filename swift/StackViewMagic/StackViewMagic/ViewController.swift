//
//  ViewController.swift
//  StackViewMagic
//
//  Created by harikanth on 10/19/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emojiView: [UIView]! {
        
        didSet {
            emojiView.forEach {
                
                $0.isHidden = true
            }
        }
    }
    @IBOutlet var emojiText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tacoButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🌮"
    }
    @IBAction func marsButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🚀"
    }
    @IBAction func caffeineButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "☕️"
    }
    @IBAction func hotButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🔥"
    }
    @IBAction func gameButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "👾"
    }
    @IBAction func worldButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🌎"
    }
    @IBAction func pizzaButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍕"
    }
    
    @IBAction func onSettingsButtonpressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "⚙"
    }
    func hideButtons(){
        UIView.animate(withDuration: 0.2){
            self.emojiView.forEach {
                $0.isHidden = !$0.isHidden
            }
            
        }
        
    }
}

