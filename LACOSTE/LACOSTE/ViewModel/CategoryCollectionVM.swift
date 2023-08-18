//
//  CategoryCollectionVM.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 13.03.23.
//

import Foundation

class CategoryCollectionVM: ObservableObject {
    @Published var selected = 0
    
    @Published var list = [CategoryCollectionButtonModel(id: 0,
                                                         title: "Все",
                                                         category: .all,
                                                         style: .selected),
                           CategoryCollectionButtonModel(id: 1,
                                                         title: "Сумки",
                                                         category: .bag,
                                                         style: .notSelected),
                           
                           CategoryCollectionButtonModel(id: 2,
                                                         title: "Очки",
                                                         category: .glass,
                                                         style: .notSelected),
                           
                           CategoryCollectionButtonModel(id: 3,
                                                         title: "Ручки",
                                                         category: .pen,
                                                         style: .notSelected),
                           CategoryCollectionButtonModel(id: 4,
                                                         title: "Часы",
                                                         category: .watch,
                                                         style: .notSelected)]
    
}
