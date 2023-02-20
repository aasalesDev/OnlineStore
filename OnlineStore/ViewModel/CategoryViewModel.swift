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
        Category(category: "DIGITAL"),
        Category(category: "HATS"),
        Category(category: "HOODIES"),
        Category(category: "SHIRTS")
    ]
    
    func getCategory(index: IndexPath) -> Category {
        return categories[index.row]
    }
    
    var numberOfRowsInSection: Int {
        return categories.count
    }
}
