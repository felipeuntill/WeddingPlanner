//
//  GenericRepository.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation
import SwiftMongoDB

class GenericRepository<T> : NSObject {
    
    var mongodb     : MongoDB!
    var dbCollection  : MongoCollection!
    
    init(collection: String!) {
        super.init()
        
        //mongodb = MongoDB(host: DatabaseConfiguration.host, port: DatabaseConfiguration.port, database: DatabaseConfiguration.database,
        //                  usernameAndPassword  :(username: DatabaseConfiguration.username, password: DatabaseConfiguration.password)
        mongodb = MongoDB(database: DatabaseConfiguration.database)        //mongodb.login(username: DatabaseConfiguration.username, password: DatabaseConfiguration.password)
        if mongodb.connectionStatus != .Success {
            print("connection was not successful")
            return
        }

        dbCollection = MongoCollection(name:collection)
        mongodb.registerCollection(dbCollection)
    }
    
    func insert (entity : T) -> T {
    
        do {
            let converted = entity as! MongoObject
            let document = converted.Document()
            dbCollection.insert(document)
        }

        return entity;
    }
    
    func load (id : Int) -> T? {
        return nil
    }
    
}