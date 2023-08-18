//
//  MainViewModel.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 29.03.23.
//

import Foundation

//ViewModel
class MainViewModel: ObservableObject {
    @Published var juliet: HumanDataModel = HumanDataModel(id: 0, name: "Juliet", age: 27)
}
