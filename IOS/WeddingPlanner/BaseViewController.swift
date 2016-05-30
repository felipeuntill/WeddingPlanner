//
//  BaseViewController.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation

class BaseViewController : UIViewController {
    
    var warningLabel : UILabel!
    var enableNavigation : Bool! = true
    var appDelegate:AppDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    func createWarn(warning : String!){
        warningLabel.hidden = false
        warningLabel.text = warning
    }
    
    func dismissWarn() {
        warningLabel.hidden = true
        warningLabel.text = ""
    }
}

extension BaseViewController {

    func RedirectToController (storyboardControllerName : String ){
        
        RedirectToController(storyboardControllerName, transition: 0.0)
    
    }
    
    func RedirectToController (storyboardControllerName : String, transition : Double)
    {
        let secondViewController = (self.storyboard?.instantiateViewControllerWithIdentifier(storyboardControllerName))! as UIViewController
        
        let window = UIApplication.sharedApplication().windows[0] as UIWindow
        UIView.transitionFromView(
            window.rootViewController!.view,
            toView: secondViewController.view,
            duration: transition,
            options: .TransitionCurlUp,
            completion: {
                finished in window.rootViewController = secondViewController
        })
    }

}
