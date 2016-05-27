//
//  NSDataProvider.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 5/22/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation

class NSDataProvider {

    static func LoadFromUri(address : String, method : String? = nil, json : String? = nil) -> NSString {
    
        let url: NSURL = NSURL(string: address)!
        let request: NSMutableURLRequest = NSMutableURLRequest(URL: url)
        let response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>=nil
        
        request.HTTPMethod = method == nil ? "GET" : method!
        request.HTTPBody = json == nil ? nil : json!.dataUsingEncoding(NSUTF8StringEncoding)
        
        do {
            let dataVal = try NSURLConnection.sendSynchronousRequest(request, returningResponse: response)
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