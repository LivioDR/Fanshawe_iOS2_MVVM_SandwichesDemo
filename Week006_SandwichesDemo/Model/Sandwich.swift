//
//  Sandwich.swift
//  Week006_SandwichesDemo
//
//  Created by Livio David Reinoso on 2024-10-10.
//

import Foundation

// structs should be used for models
// classes should be used for viewmodels
struct Sandwich: Identifiable {
    let id: UUID
    let name: String
    let ingredientCount: Int
    let isSpicy: Bool
    
    // Computed properties
    var imageName:String { name }
    var thumbnailName:String { return name + "Thumb" }
    
    // initializer
    // internal makes it internal to a module
    internal init(id: UUID = UUID(), name: String, ingredientCount: Int, isSpicy: Bool = false) {
        self.id = id
        self.name = name
        self.ingredientCount = ingredientCount
        self.isSpicy = isSpicy
    }
    
}
