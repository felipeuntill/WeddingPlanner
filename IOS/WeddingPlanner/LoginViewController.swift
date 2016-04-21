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
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    
    // Summary: Overrides
    // Overrides,.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    
    // Summary: IBActions
    // @IBAction,.
    // Login Buttom, When user pressed the login button.
    @IBAction func loginButton_Touch(sender: UIButton) {
        
        activityIndicator.startAnimating()
        
        // Produces an small delay before stop the animation against
        let timer = dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double(NSEC_PER_SEC)))
        dispatch_after(timer, dispatch_get_main_queue()){
            self.activityIndicator.stopAnimating()
        }
    }
    
    
    // Summary: Functions
    // Func,
    // Validate Login, returns the user login validation result.
    func validateLogin () -> Bool {
        
        let canLogin = true
    
        return canLogin
    }
}
