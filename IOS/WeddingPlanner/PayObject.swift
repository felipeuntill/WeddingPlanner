//
//  PayObject.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/19/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit
import SwiftMongoDB

public struct PayObject: MongoObject {

    var   price         : NSDecimal?
        , incoming      : NSDecimal?
        , parcels       : Int?
        , parcelsPaid   : Int?
        , parcelsPrice  : NSDecimal?
        , Paid          : Bool?
}
