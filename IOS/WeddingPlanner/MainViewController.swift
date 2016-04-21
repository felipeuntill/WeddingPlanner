//
//  MainViewController.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/20/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func menuButton_TouchDown(sender: AnyObject) {
        revealViewController().revealToggle(sender)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if revealViewController() != nil {
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        }
    }
}
