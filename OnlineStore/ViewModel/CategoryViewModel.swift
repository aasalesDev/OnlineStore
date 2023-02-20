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
    
    func getCategory(index: IndexPath) -> String {
        return categories[index.row].getTitle
    }
    
    var numberOfRowsInSection: Int {
        return categories.count
    }
}
