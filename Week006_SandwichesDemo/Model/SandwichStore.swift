//
//  SandwichStore.swift
//  Week006_SandwichesDemo
//
//  Created by Livio David Reinoso on 2024-10-10.
//

import Foundation
import Observation

// not going to inherit from any class (final)
@Observable
final class SandwichStore {
    var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich]) {
        self.sandwiches = sandwiches
    }
}

extension SandwichStore {
    static var mockData = [
        Sandwich(name: "Club", ingredientCount: 4),
        Sandwich(name: "Caprese", ingredientCount: 4, isSpicy: true),
        Sandwich(name: "Double Wrap Bean Tacos", ingredientCount: 3),
        Sandwich(name: "Egg & Ham Openface", ingredientCount: 5, isSpicy: true),
        Sandwich(name: "California Quinoa Burger", ingredientCount: 2),
        Sandwich(name: "Hot dog", ingredientCount: 4),
        Sandwich(name: "Green Goddess Pita", ingredientCount: 2, isSpicy: true),
        Sandwich(name: "Toasted Ham and Cheese", ingredientCount: 2),
        Sandwich(name: "Avocado Crepe", ingredientCount: 3, isSpicy: true),
        Sandwich(name: "Triple Meat & Cheese", ingredientCount: 4, isSpicy: true),
    ]
    
    static var testSandwichStore: SandwichStore = SandwichStore(sandwiches: mockData)
}
