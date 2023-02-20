//
//  DataService.swift
//  OnlineStore
//
//  Created by Anderson Sales on 19/02/23.
//

import Foundation

class DataService {
    
    /// Singleton Design Pattern
    static let instance = DataService()
    
    private let categories: [Category] = [
        Category(title: "DIGITAL"),
        Category(title: "HATS"),
        Category(title: "HOODIES"),
        Category(title: "SHIRTS")
    ]
    
    private let hats: [Product] = [
        Product(name: "Awesome Hat", image: "hat01", price: "$9.99"),
        Product(name: "Awesome Hat", image: "hat02", price: "$10.00"),
        Product(name: "Awesome Hat", image: "hat03", price: "$13.99"),
        Product(name: "Awesome Hat", image: "hat04", price: "$10.99")
    ]
    
    private let hoodies: [Product] = [
        Product(name: "Awesome Hoodie", image: "hoodie01", price: "$99.99"),
        Product(name: "Awesome Hoodie", image: "hoodie02", price: "$100.50"),
        Product(name: "Awesome Hoodie", image: "hoodie03", price: "$113.99"),
        Product(name: "Awesome Hoodie", image: "hoodie04", price: "$112.99")
    ]
    
    private let shirts: [Product] = [
        Product(name: "Awesome Shirt", image: "shirt01", price: "$49.99"),
        Product(name: "Awesome Shirt", image: "shirt02", price: "$39.99"),
        Product(name: "Awesome Shirt", image: "shirt03", price: "$36.99"),
        Product(name: "Awesome Shirt", image: "shirt04", price: "$35.00"),
        Product(name: "Awesome Shirt", image: "shirt05", price: "$45.00")
    ]
    
    func getProduct(index: IndexPath) -> [Product] {
        switch getCategory(index: index) {
        case "DIGITAL":
            return getDigital()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        default:
            return getDigital()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigital() -> [Product] {
        return [Product]()
    }
    
    func getCategory(index: IndexPath) -> String {
        return categories[index.row].title
    }
    
    var numberOfRowsInSection: Int {
        return categories.count
    }
}
