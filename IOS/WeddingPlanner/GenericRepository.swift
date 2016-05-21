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
        
        mongodb = MongoDB(host: DatabaseConfiguration.host, port: DatabaseConfiguration.port, database: DatabaseConfiguration.database)
        mongodb.login(username: DatabaseConfiguration.username, password: DatabaseConfiguration.password)
        dbCollection = MongoCollection(name:collection)
        mongodb.registerCollection(dbCollection)
    }
    
    func insert (entity : T) -> T {
    
        do {
            let converted = entity as! MongoObject
            let document = converted.Document()
            dbCollection.insert(document)
            var result = dbCollection.findOne()
            var x = result.successValue
            var z = x?.data

        } catch {
            print(error)
        }

        return entity;
    }
    
    func load (id : Int) -> T? {
        return nil
    }
    
//    
//    var data: NSData = json.dataUsingEncoding(NSUTF8StringEncoding)!
//    var error: NSError?
//    
//    // convert NSData to 'AnyObject'
//    let anyObj: AnyObject? = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(0),
//                                                                    error: error)
//    
//    // convert 'AnyObject' to Array<Business>
//    list = self.parseJson(anyObj!)
//    
//    //===============
//    
//    func parseJson(anyObj:AnyObject) -> Array<Business>{
//        
//        var list:Array<Business> = []
//        
//        if  anyObj is Array<AnyObject> {
//            
//            var b:Business = Business()
//            
//            for json in anyObj as Array<AnyObject>{
//                b.name = (json["name"] as AnyObject? as? String) ?? "" // to get rid of null
//                b.id  =  (json["id"]  as AnyObject? as? Int) ?? 0
//                
//                list.append(b)
//            }// for
//            
//        } // if
//        
//        return list
//        
//    }//func  
    
    
}