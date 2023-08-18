//
//  CategoryCollectionButtonModel.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 12.03.23.
//

import Foundation
import SwiftUI

struct CategoryCollectionButtonModel: Identifiable {
    var id: Int
    var title: String
    var description: String?
    var category: CategoryName
    var style: CategoryCollectionButtonEnum = .notSelected
}

struct CategoryCollectionStyleModel{
    var foregroundColor:Color = AppColor.black
    var backgroundColor:Color = AppColor.gray.opacity(0.5)
}

enum   CategoryCollectionButtonEnum {
    case selected     // Выбранное
    case notSelected  // Не выбранное
    
    var state: CategoryCollectionStyleModel {
        switch self {
            
        case .selected: return CategoryCollectionStyleModel(
                                                          foregroundColor: AppColor.white,
                                                          backgroundColor: AppColor.black)
        case .notSelected: return CategoryCollectionStyleModel()
        }
    }
}
