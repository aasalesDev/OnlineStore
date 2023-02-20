//
//  Category.swift
//  OnlineStore
//
//  Created by Anderson Sales on 19/02/23.
//

import Foundation

struct Category {
    
    private var title: String
    
    init(title: String) {
        self.title = title
    }
    
    var getTitle: String {
        return title
    }
}
