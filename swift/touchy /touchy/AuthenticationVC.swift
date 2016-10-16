//
// AuthenticationVC.swift
//  touchy
//
//  Created by harikanth on 10/9/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit
import LocalAuthentication
class AuthenticationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func useTouchIDButtonWasPressed(_ sender: AnyObject) {
        
        let authenticationContext = LAContext()
        var error: NSError?
        
        if authenticationContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error ){
            
            authenticationContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Only humans, no dogs", reply:{( success, error) in
                if success {
                    self.navigateToAuthenticatedVC()
                } else {
                    if let error = error as? NSError {
                        
                        let message = self.errorMessageWithLAErrorCode(errorCode: error.code)
                        self.showAlertViewAfterEvaluatingPolicyWithMessage(message: message)
                        
                    }
                }
                })
            //Navigating to success VC, handling errors
            
        } else {
            showAlertVieworNoBiometrics()
            return
        }
        
    }
    
    func showAlertViewAfterEvaluatingPolicyWithMessage(message: String) {
        showAlertWIthTitle(title:"Error", message: message)
    }
    
    func errorMessageWithLAErrorCode(errorCode: Int) -> String {
        var message = ""
        switch errorCode{
        case LAError.appCancel.rawValue:
            message = "Authentication was cancelled by application"
        case LAError.authenticationFailed.rawValue:
            message = "The User failed to provide valid credentials"
        case LAError.invalidContext.rawValue:
            message = "The context is invlaid"
        case LAError.passcodeNotSet.rawValue:
            message = "Passcode is not set on this device"
        case LAError.systemCancel.rawValue:
            message = "Authentication was cancelled by the system"
        case LAError.touchIDLockout.rawValue:
            message = "Too many failed attempts"
        case LAError.touchIDNotAvailable.rawValue:
            message = "Touch ID not available on the device."
        case LAError.userCancel.rawValue:
            message = "The user cancelled."
        case LAError.userFallback.rawValue:
            message = "The user chose to fall back."
        default:
            message = "Did not find the error code on LAError object"
        }
        return message
        
    }
   
    func navigateToAuthenticatedVC(){
        
        if let loggedInVC = storyboard?.instantiateViewController(withIdentifier: "LoggedInVC"){
            
            self.navigationController?.pushViewController(loggedInVC, animated: true)
        }
    }
    
    func showAlertVieworNoBiometrics(){
        showAlertWIthTitle(title: "Error", message: "This device doesn't have a Touch ID sensor.")
    }
    func showAlertWIthTitle(title: String, message: String){
        
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertVC.addAction(okAction)
        self.present(alertVC, animated: true, completion: nil)
    }
}


