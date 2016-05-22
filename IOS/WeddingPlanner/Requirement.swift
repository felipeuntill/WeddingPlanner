//
//  Requirement.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/19/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit
import SwiftMongoDB

public struct Requirement: MongoObject {

    var   requirementId : Int?
        , name          : String?
        , urgency       : Int?
    
}
