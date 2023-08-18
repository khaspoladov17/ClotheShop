//
//  MainTabView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 15.03.23.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var products: MainGridVM
    
    var body: some View {
        ZStack(content:{
            VStack(content: {
                //MARK: - Фильтер
                CategoryCollectionView()
                    .environmentObject(products)
                
                CategoryCollectionTab()
                    .environmentObject(products)
            })
        })
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(MainGridVM())
    }
}
