//
//  Entity.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 5/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation
import SwiftMongoDB

public class Entity : MongoObject {

    init () {
        Id = NSUUID()
    }
    
    var Id : NSUUID?
    
}