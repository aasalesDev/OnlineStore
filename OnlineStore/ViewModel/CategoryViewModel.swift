//
//  CategoryViewModel.swift
//  OnlineStore
//
//  Created by Anderson Sales on 19/02/23.
//

import Foundation

class CategoryViewModel {
    
    /// Singleton Design Pattern
    static let instance = CategoryViewModel()
    
    private let categories: [Category] = [
        Category(title: "DIGITAL"),
        Category(title: "HATS"),
        Category(title: "HOODIES"),
        Category(title: "SHIRTS")
    ]
    
    private let images = ["hat01", "hat02", "hat03", "hat04", "hoodie01", "hoodie02", "hoodie03", "hoodie04", "shirt01", "shirt02", "shirt03", "shirt04","shirt05"]
    
    func getImages() -> [String] {
        return images
    }
    
    func getCategory(index: IndexPath) -> String {
        return categories[index.row].getTitle
    }
    
    var numberOfRowsInSection: Int {
        return categories.count
    }
}
