//
//  MainView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 09.03.23.
//

import SwiftUI

struct MainView: View {
    @StateObject private var products = MainGridVM()
    @State private var notificationCount: Int = 0
    @State private var showProfile = false
    @State private var showNotification = false
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView(content: {
            ZStack(content: {
                NavigationLink(isActive: $showNotification,
                               destination: {
                    NotificationView(backButton: $showNotification)
                }, label: {
                    EmptyView()
                })
                
                ZStack(content: {
                  // VStack(spacing: 0,content: {List{
                      VStack(spacing: 15, content:{
                            //MARK: - Шапка главного окна
                          MainTopBar(notificationCount:$notificationCount){
                              self.showNotification.toggle()
                          }
                            
                            //MARK: - Поиск
                            SearchTextField(frame: (getWidth() - 40, 50),
                                            placholder: "Поиск",
                                            text: $searchText)
                            
                            //MARK: - Список товаров
                            MainTabView()
                                .environmentObject(products)
                            
                       }).frame(width: getWidth())
                            .listRowSeparator(.hidden)
                   // }.listStyle(.plain)
                 // })
                })
            })
            .onAppear(perform:{
                self.products.setDataForAll()
            })
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
