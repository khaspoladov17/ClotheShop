//
//  MainGridVM.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 15.03.23.
//

import Foundation
import SwiftUI

class MainGridVM: ObservableObject{
    @Published var selected: Int = 0
    @Published var list: [ShopItemModel] = [ShopItemModel(id:0,
                                                          categoryName: CategoryCollectionButtonModel(id: 0,
                                                                                                      title: "Все",
                                                                                                      category: .all,
                                                                                                      style: .notSelected),
                                                          product: []),
                                            ShopItemModel(id:1,
                                                          categoryName:CategoryCollectionButtonModel(id: 1,
                                                                                                     title: "Очки",
                                                                                                     category: .glass,
                                                                                                     style: .notSelected),
                                                          product:   [MainGridDataModel(id: 0,
                                                                                        image: Image(AppImage.Category.Glass.glass6),
                                                                                        title: "New model of Lacoste",
                                                                                        categoryId: 1 ,
                                                                                        description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                      shortDescription: "Designed by Lacoste in California",
                                                                      price: "197.89 $"),
                                                                      MainGridDataModel(id: 1, image: Image(AppImage.Category.Glass.glass7),
                                                                                        title: "New model of Lacoste" ,
                                                                                        categoryId: 1,
                                                                                        categoryValue: .glass,
                                                                                        description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                      shortDescription: "Designed by Lacoste in California",
                                                                      price: "197.89 $"),
                                                                      MainGridDataModel(id: 2, image: Image(AppImage.Category.Glass.glass4),
                                                                                        title: "New model of Lacoste",
                                                                                        categoryId: 1 ,
                                                                                        description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                      shortDescription: "Designed by Lacoste in California",
                                                                      price: "197.89 $"),
                                                                      MainGridDataModel(id: 3, image: Image(AppImage.Category.Glass.glass5),
                                                                                        title: "New model of Lacoste", categoryId: 1 ,
                                                                                        description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                      shortDescription: "Designed by Lacoste in California",
                                                                      price: "197.89 $"),
                                                                      MainGridDataModel(id: 4, image: Image(AppImage.Category.Glass.glass1),
                                                                                        title: "New model of Lacoste", categoryId: 1 ,
                                                                                        description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                      shortDescription: "Designed by Lacoste in California",
                                                                      price: "197.89 $"),
                                                                      MainGridDataModel(id: 5, image: Image(AppImage.Category.Glass.glass2),
                                                                                        title: "New model of Lacoste", categoryId: 1 ,
                                                                                        description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                      shortDescription: "Designed by Lacoste in California",
                                                                      price: "197.89 $")
                                                          ]
                                                         ),
                                            ShopItemModel(id: 2,
                                                          categoryName:CategoryCollectionButtonModel(id: 2,
                                                                                                     title: "Сумки",
                                                                                                     category: .bag,
                                                                                                     style: .notSelected),
                                                          product:     [MainGridDataModel(id: 6, image: Image(AppImage.Category.Bag.bag1),
                                                                                          title: "New model of Lacoste", categoryId: 2 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 7, image: Image(AppImage.Category.Bag.bag2),
                                                                                          title: "New model of Lacoste", categoryId: 2 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 8, image: Image(AppImage.Category.Bag.bag3),
                                                                                          title: "New model of Lacoste", categoryId: 2 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 9, image: Image(AppImage.Category.Bag.bag4),
                                                                                          title: "New model of Lacoste", categoryId: 2 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 10, image: Image(AppImage.Category.Bag.bag5),
                                                                                          title: "New model of Lacoste", categoryId: 2 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 11, image: Image(AppImage.Category.Bag.bag3),
                                                                                          title: "New model of Lacoste", categoryId: 2 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $")
                                                          ]
                                                         ),
                                            ShopItemModel(id: 3,
                                                          categoryName: CategoryCollectionButtonModel(id: 3,
                                                                                                      title: "Ручки",
                                                                                                       category: .pen,
                                                                                                       style: .notSelected),
                                                          product:     [MainGridDataModel(id: 12, image: Image(AppImage.Category.Pen.pen1),
                                                                                          title: "New model of Lacoste", categoryId: 3 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 13, image: Image(AppImage.Category.Pen.pen2),
                                                                                          title: "New model of Lacoste", categoryId: 3 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 14, image: Image(AppImage.Category.Pen.pen3),
                                                                                          title: "New model of Lacoste", categoryId: 3 ,
                                                                                                                                                                                      description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                                                                                                                    shortDescription: "Designed by Lacoste in California",
                                                                                                                                                                    price: "197.89 $"),
                                                                        MainGridDataModel(id: 15, image: Image(AppImage.Category.Pen.pen4),
                                                                                          title: "New model of Lacoste", categoryId: 3 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 16, image: Image(AppImage.Category.Pen.pen2),
                                                                                          title: "New model of Lacoste", categoryId: 3 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 17, image: Image(AppImage.Category.Pen.pen1),
                                                                                          title: "New model of Lacoste", categoryId: 3 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $")
                                                          ]
                                                         ),
                                            ShopItemModel(id: 4,
                                                          categoryName: CategoryCollectionButtonModel(id: 4,
                                                                                                      title: "Часы",
                                                                                                       category: .watch,
                                                                                                       style: .notSelected),
                                                          product:     [MainGridDataModel(id: 18, image: Image(AppImage.Category.Watch.watch1),
                                                                                          title: "New m4odel of Lacoste", categoryId: 4 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 19, image: Image(AppImage.Category.Watch.watch2),
                                                                                          title: "New model of Lacoste", categoryId: 4 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 20, image: Image(AppImage.Category.Watch.watch3),
                                                                                          title: "New model of Lacoste", categoryId: 4 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 21, image: Image(AppImage.Category.Watch.watch4),
                                                                                          title: "New model of Lacoste", categoryId: 4 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 22, image: Image(AppImage.Category.Watch.watch5),
                                                                                          title: "New model of Lacoste", categoryId: 4 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $"),
                                                                        MainGridDataModel(id: 23, image: Image(AppImage.Category.Watch.watch2),
                                                                                          title: "New model of Lacoste", categoryId: 4 ,
                                                                                          description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. ",
                                                                        shortDescription: "Designed by Lacoste in California",
                                                                        price: "197.89 $")
                                                          ]
                                                         ),
                                                         ]
    
    
    //TODO: Переработать
    func setDataForAll() {
        guard list[0].product.isEmpty == true else { return }
        
        for item in list {
            if item.categoryName.category != .all {
                list[0].product.append(contentsOf: item.product)
            }
        }
    }
    
    func changeStateItem(itemIndex: Int, itemStyle: CategoryCollectionButtonEnum){
        for index in 0..<self.list.count {
            (index == selected) ? (self.list[index].categoryName.style = .selected) : (self.list[index].categoryName.style = .notSelected)
        }
    }
    
    func changeLike(index: Int, id: Int){
        //Раздел Элемента
        let categoryId = self.list[selected].product[index].categoryId
        //Изменить в текущем разделе
        self.list[selected].product[index].like.toggle()
        //Изменить в других настройках
        self.setToggle(categoryId: self.list[selected].categoryName.category == .all ? categoryId! : 0, id: id)
    }
    
    func setToggle(categoryId: Int, id: Int){
        for i in 0..<self.list[categoryId].product.count {
            if self.list[categoryId].product[i].id == id {
                self.list[categoryId].product[i].like.toggle()
            }
        }
    }
}

struct ShopDataModels: Identifiable {
    var id: Int
    var item: [ShopItemModel]
}

struct ShopItemModel: Identifiable {
    var id: Int
    var categoryName: CategoryCollectionButtonModel
    var product: [MainGridDataModel]
}

enum CategoryName {
    case all,glass,pen,bag,watch
}
