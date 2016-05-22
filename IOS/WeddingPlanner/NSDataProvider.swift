//
//  Data.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 5/22/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation

class NSDataProvider {

    static func LoadFromUri(address : String) -> NSString {
    
        let url: NSURL = NSURL(string: address)!
        let request1: NSURLRequest = NSURLRequest(URL: url)
        let response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>=nil
        
        do {
            let dataVal = try NSURLConnection.sendSynchronousRequest(request1, returningResponse: response)
            print(response)
            
            do {
                let rawContent = NSString(data: dataVal, encoding: NSUTF8StringEncoding)!
                print(rawContent)
                return rawContent
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        return "";
    }
}