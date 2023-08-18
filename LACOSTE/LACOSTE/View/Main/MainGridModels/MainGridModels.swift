//
//  MainGridModels.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 14.03.23.
//

import Foundation
import SwiftUI

struct MainGridDataModel{
    var id: Int?
    var image: Image = Image(AppImage.CompanyLogo.logo)
    var title: String?
    var categoryId: Int?
    var categoryValue: CategoryName?
    var description: String?
    var shortDescription: String?
    var like: Bool = false
    var price: String = "197.89 $"   // Должен стоять Double
}

