//
//  BaseViewController.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation

class BaseViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if revealViewController() != nil {
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        }
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
            options: .TransitionCrossDissolve,
            completion: {
                finished in window.rootViewController = secondViewController
        })
    }

}
