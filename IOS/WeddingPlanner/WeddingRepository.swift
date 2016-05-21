//
//  WeddingRepository.swift
//  WeddingPlanner
//
//  Created by Felipe Assunção on 4/21/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

class WeddingRepository : GenericRepository<Wedding> {

    init() {
        super.init(collection: "Wedding")
    }

    
}