//
//  RequirementViewController.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation

class RequirementViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if revealViewController() != nil {
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        }
    }
    
}