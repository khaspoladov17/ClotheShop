//
//  TabViewContent.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 09.03.23.
//

import SwiftUI

struct TabViewContent: View {
    @State private var selected: Int = 0
    
    var body: some View {
        ZStack{
            TabView(selection: $selected){
                MainView()
                    .tag(0)
                    .tabItem({
                        VStack(content: {
                            Image(systemName: "star")
                                .resizable()
                                .foregroundColor(AppColor.white)
                            Text("Товары")
                                .foregroundColor(AppColor.black)
                        })
                    })
                    .onTapGesture {
                        self.selected = 0
                    }
                
                ProfileView()
                    .tag(1)
                    .tabItem({
                        VStack(content: {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .foregroundColor(AppColor.white)
                        Text("Профиль")
                            .foregroundColor(AppColor.black)
                    })
                    })
                    .onTapGesture {
                        self.selected = 1
                    }
                    .accentColor(AppColor.black)
            }
            .navigationBarHidden(true)
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
                appearance.backgroundColor = UIColor(AppColor.white)
                
                UITabBar.appearance().standardAppearance = appearance
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}

struct TabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContent()
    }
}
