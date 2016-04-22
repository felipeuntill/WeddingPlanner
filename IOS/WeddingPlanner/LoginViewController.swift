//
//  MainViewController.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/19/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // Summary: IBOulets
    // IBOulets,.
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    let placeholderText = "yourname@domain.com"
    
    // Summary: Overrides
    // Overrides,.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.placeholder()
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject!) -> Bool {

        // Login Buttom, When user pressed the login button.
        //if identifier == "loginSegue" {
            //return validateLogin()
        //}
        
        return super.shouldPerformSegueWithIdentifier(identifier, sender: sender)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        placeholder()
    }
    
    func placeholder () {
//        if userTextField?.text == "" || userTextField == placeholderText {
//            userTextField?.text = placeholderText
//            userTextField?.textColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
//        }else {
//            clearPlaceholder(userTextField)
//        }
    }
    
    func clearPlaceholder (sender :  UITextField) {
//        if(sender.text == placeholderText){
//            sender.text = ""
//        }
//        sender.textColor = UIColor.whiteColor()
    }
    
   
    // Summary: IBActions
    // @IBAction,.
    
    @IBAction func textFieldEditBegin(sender: UITextField) {
        clearPlaceholder(sender)
    }
    
    @IBAction func textFieldEditDidEnd(sender: UITextField) {
        placeholder()
    }
    
    
    
    // Summary: Functions
    // Func,
    // Validate Login, returns the user login validation result.
    func validateLogin () -> Bool {
        
        activityIndicator.startAnimating()
        
        let alert = UIAlertView()
        var canLogin = true
    
        if !(userTextField.text?.IsEmail())! || userTextField.text == placeholderText {
            canLogin = false
        }
        
        if !(passTextField.text?.IsPassword())! {
            canLogin = false
        }
        
        if !canLogin {
            
            alert.title = "Wrong login inputs"
            alert.message = "Please review your login informations"
            alert.addButtonWithTitle("Ok")
            alert.show()
            
        }
        
        // Produces an small delay before stop the animation against
        let timer = dispatch_time(DISPATCH_TIME_NOW, Int64(0.5 * Double(NSEC_PER_SEC)))
        dispatch_after(timer, dispatch_get_main_queue()){
            self.activityIndicator.stopAnimating()
        }
        
        return canLogin
    }
}
