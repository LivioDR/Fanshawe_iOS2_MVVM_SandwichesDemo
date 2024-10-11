//
//  ContentView.swift
//  Week006_SandwichesDemo
//
//  Created by Livio David Reinoso on 2024-10-10.
//

import SwiftUI

struct SandwichesListView: View {
    
    @State var viewModel: SandwichesListViewModel
    
    
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    ForEach(viewModel.listData) { sandwich in
                        SandwichRow(sandwich: sandwich)
                    }
                    .onMove(perform: viewModel.moveSandwiches)
                    .onDelete(perform: viewModel.deleteSandwich)
                    HStack {
                        Spacer()
                        Text(viewModel.displayCount)
                            .foregroundStyle(.secondary)
                        Spacer()
                    }
                }
                .navigationTitle(viewModel.navTitle)
                .searchable(text: $viewModel.searchTerm, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search for sandwiches")
                .onChange(of: viewModel.searchTerm) {
                    viewModel.filterSearchResults()
                }
                .animation(.easeInOut, value: viewModel.searchTerm)
                .toolbar {
                    HStack {
                        Button("Add") {
                            withAnimation{
                                viewModel.makeSandwich()
                            }
                        }
                        Spacer()
                        EditButton()
                    }
                }
            }
        }
    }
}

#Preview {
    SandwichesListView(viewModel: SandwichesListViewModel())
}
