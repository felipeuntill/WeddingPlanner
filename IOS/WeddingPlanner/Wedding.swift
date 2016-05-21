//
//  Wedding.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/19/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit
import SwiftMongoDB

public struct Wedding : MongoObject {

    var   brideId   : Int = 0
        , groomId   : Int = 0
}
