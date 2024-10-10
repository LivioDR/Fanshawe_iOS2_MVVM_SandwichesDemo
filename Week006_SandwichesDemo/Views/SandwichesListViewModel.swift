//
//  SandwichesListViewModel.swift
//  Week006_SandwichesDemo
//
//  Created by Livio David Reinoso on 2024-10-10.
//

// SwiftUI includes Foundation
import SwiftUI
import Observation

@Observable // everything public (and in use) will be observed
final class SandwichesListViewModel {
    // Observable properties
    var store:SandwichStore
    var navTitle:String = ""
    var searchTerm:String = ""
    var searchResults:[Sandwich] = []
    
    // Computed properties
    var listData: [Sandwich] {
        return searchTerm.isEmpty ? store.sandwiches : searchResults
    }
    
    var displayCount:String {
        "\(listData.count) sandwiches"
    }
    
    init(store: SandwichStore = SandwichStore.testSandwichStore, navTitle: String = "Sandwiches") {
        self.store = store
        self.navTitle = navTitle
    }
    
    func filterSearchResults() {
        searchResults = store.sandwiches.filter({
            $0.name.localizedCaseInsensitiveContains(searchTerm)
        })
    }
    
    func makeSandwich() {
        guard let randomSandwich = store.sandwiches.randomElement() else {
            return
        }
        let newSandwich = Sandwich(name: randomSandwich.name, ingredientCount: randomSandwich.ingredientCount, isSpicy: randomSandwich.isSpicy)
        store.sandwiches.append(newSandwich)
    }
    
    func deleteSandwich(offset: IndexSet){
        store.sandwiches.remove(atOffsets: offset)
    }
    
    func moveSandwiches(from:IndexSet, to: Int){
        store.sandwiches.move(fromOffsets: from, toOffset: to)
    }
}
