//
//  CategoryCollectionCellView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 12.03.23.
//

import SwiftUI

struct CategoryCollectionCellView: View {
    @Binding var item: CategoryCollectionButtonModel
    let callBack: (_  item: CategoryCollectionButtonModel) -> ()
    var body: some View {
        ZStack{
            Button(action: {
                self.callBack(item)
            }, label: {
                Text(item.title)
                    .padding()
                    .foregroundColor(item.style.state.foregroundColor)
                    .background(item.style.state.backgroundColor)
                    .cornerRadius(10)
                    .padding(.leading, 10)
            })
        }
    }
}

struct CategoryCollectionCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionCellView(item: .constant(CategoryCollectionButtonModel(id: 0,
                                                                                 title: "Все",
                                                                                 category: .bag))){ _ in }
    }
}
