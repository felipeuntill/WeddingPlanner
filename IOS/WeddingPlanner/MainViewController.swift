//
//  MainViewController.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/20/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: BaseViewController {

    @IBOutlet var userImageView: UIImageView!
    
    @IBAction func menuButton_TouchDown(sender: AnyObject) {
        revealViewController().revealToggle(sender)
    }

    override func viewDidLoad() {
        //self.RedirectToController("LoginScene")
        
        let repository = WeddingRepository(address: EndingPointConfiguration.WeddingService)
        let wedding = repository.list()
        let x = wedding?.count
        let z = wedding?.isEmpty
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        userImageView.layer.borderWidth = 0
        userImageView.layer.masksToBounds = false
        userImageView.layer.borderColor = UIColor.whiteColor().CGColor
        userImageView.layer.cornerRadius = 44
        userImageView.clipsToBounds = true
    }
}
