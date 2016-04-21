//
//  SidebarTableViewController.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/20/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet var userImageView: UIImageView!
 
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        userImageView.layer.borderWidth = 0
        userImageView.layer.masksToBounds = false
        userImageView.layer.borderColor = UIColor.whiteColor().CGColor
        userImageView.layer.cornerRadius = 31
        userImageView.clipsToBounds = true
    }
    

}
