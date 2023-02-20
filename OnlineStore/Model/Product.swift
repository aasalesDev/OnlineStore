//
//  Product.swift
//  OnlineStore
//
//  Created by Anderson Sales on 20/02/23.
//

import Foundation

struct Product {
    private (set) public var name: String
    private (set) public var image: String
    private (set) public var price: String
    
    init(name: String, image: String, price: String) {
        self.name = name
        self.image = image
        self.price = price
    }
}
