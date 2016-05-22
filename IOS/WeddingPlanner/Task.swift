//
//  Task.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/19/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit
import SwiftMongoDB

public struct Task: MongoObject {

    var   weddingId : Int?
        , title     : String?
        , done      : Bool?
}
