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
        Sandwich(name: "BLT", ingredientCount: 3, isSpicy: true),
        Sandwich(name: "Club", ingredientCount: 4),
        Sandwich(name: "Turkey Rancher", ingredientCount: 5),
        Sandwich(name: "Milanga", ingredientCount: 2),
        Sandwich(name: "Bologna", ingredientCount: 6, isSpicy: true),
    ]
    
    static var testSandwichStore: SandwichStore = SandwichStore(sandwiches: mockData)
}
