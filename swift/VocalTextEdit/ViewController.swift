//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by harikanth on 10/16/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()

    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(sender: NSButton) {
       
        if let contents = textView.string , !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            speechSynthesizer.startSpeaking("The file is empty.")
        }
        
    }
    @IBAction func stopButtonClicked(sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }

}

