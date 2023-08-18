//
//  CategoryCollectionTab.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 17.03.23.
//

import SwiftUI

struct CategoryCollectionTab: View {
    @EnvironmentObject var products: MainGridVM
    
    var body: some View{
        VStack(content: {
            TabView(selection: $products.selected) {
                ForEach(products.list.indices, id:\.self){ index in
                    MainGridView(itemsIndex: index)
                        .environmentObject(products)
                        .tag(index)
                }
            }
            .onChange(of: products.selected, perform: {
                selected in self.products.changeStateItem(
                    itemIndex: products.list[products.selected].categoryName.id,
                    itemStyle: products.list[products.selected].categoryName.style)
            })
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        })
    }
}

struct CategoryCollectionTab_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionTab()
            .environmentObject(MainGridVM())
    }
}
