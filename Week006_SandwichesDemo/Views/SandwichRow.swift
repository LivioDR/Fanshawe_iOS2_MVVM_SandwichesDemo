//
//  SandwichesRow.swift
//  Week006_SandwichesDemo
//
//  Created by Livio David Reinoso on 2024-10-10.
//

import SwiftUI

struct SandwichRow: View {
    var sandwich: Sandwich
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            HStack {
                Image(sandwich.thumbnailName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading) {
                    Text(sandwich.name)
                        .font(.title2)
                        .foregroundStyle(.black)
                    Text("\(sandwich.ingredientCount) ingredients")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                if(sandwich.isSpicy){
                    Image(systemName: "flame.fill")
                        .font(.title2)
                        .foregroundStyle(.red)
                }
            }
            .padding()
        }
    }
}

#Preview {
    SandwichRow(sandwich: SandwichStore.testSandwichStore.sandwiches[5])
}
