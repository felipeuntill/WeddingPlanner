//
//  GenericRepository.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import Foundation
import ObjectMapper

class GenericRepository<T: Mappable>  {
    
    var address : String!
  
    init(address: String!) {
        self.address = address
    }
    
    func insert (entity : T) -> T {
        return entity
    }
    
    func load (id : String) -> T? {
        let uri = "\(address)/\(id)"
        let raw = NSDataProvider.LoadFromUri(uri)
        let entity = Mapper<T>().map(raw)
      return entity
    }
}