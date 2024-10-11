//
//  SandwichDetail.swift
//  Week006_SandwichesDemo
//
//  Created by Livio David Reinoso on 2024-10-10.
//

import SwiftUI

struct SandwichDetail: View {
    @State var zoomed:Bool = false
    
    var sandwich:Sandwich
    
    
    var body: some View {
        VStack {
            Text(sandwich.name)
                .font(.title)
                .padding(.all)
            Spacer()
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Spacer()
            if(sandwich.isSpicy){
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(.all)
                .font(.headline.smallCaps())
                .foregroundStyle(.yellow)
                .background(.red)
                .transition(.move(edge: .bottom))
            }
        }
    }
}

#Preview {
    SandwichDetail(sandwich: SandwichStore.testSandwichStore.sandwiches[1])
}
