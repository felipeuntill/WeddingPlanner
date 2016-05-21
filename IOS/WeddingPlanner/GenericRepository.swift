//
//  GenericRepository.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation

class GenericRepository<T> : NSObject {

    var
    
    func insert (entity : T) -> T {
    
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