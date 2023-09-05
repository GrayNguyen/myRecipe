//
//  Category.swift
//  myRecipe
//
//  Created by Gia Hân on 04/09/2023.
//

import Foundation

struct Category: Identifiable{
    var id: Int
    var name: String
    var image: String
    
    static var categories: [Category] = [
        Category(id: 1, name: "Breakfast", image: "breakfast"),
        Category(id: 2, name: "Lunch", image: "lunch"),
        Category(id: 3, name: "Dinner", image: "dinner"),
        Category(id: 4, name: "Dessert", image: "dessert"),
        Category(id: 5, name: "Smoothies", image: "smoothies")
    ]
}
