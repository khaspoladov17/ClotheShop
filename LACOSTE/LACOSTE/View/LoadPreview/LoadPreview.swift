//
//  LoadPreview.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 05.03.23.
//

import SwiftUI

struct LoadPreview: View {
    @StateObject private var auth = AuthVM()
    @State private var viewState: AuthState = .reg
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                NavigationLink(isActive: $auth.nextTab,
                               destination: {
                    TabViewContent()
                },label: {
                    EmptyView()
                })
                NavigationLink(isActive: $auth.nextAuth,
                               destination: {
                    AuthView(viewState: viewState)
                        .environmentObject(auth)
                },label: {
                    EmptyView()
                })
                
                Image(AppImage.Wallpaper.wallpaper2)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: 5)
                VStack(spacing:20 , content: {
                    Image(AppImage.CompanyLogo.logo)
                        .resizable().frame(width: 250+30+10-3+17+37+14, height: 100+20-5)
                    
                    Text("LACOSTE")
                        .font(.custom(AppFont.pacifico, size: 47))
                })
                
                VStack(spacing: 15,content: {
                    Spacer()
                    
                    Button(action: {
                        self.viewState = .auth
                        self.auth.nextAuth.toggle()
                    }, label: {
                        ButtonView(model: .auth,
                                   state: .constant(.activeBlack),
                                   frame: (getWidth() - 40, 50))
                    })
                    
                    Button(action: {
                        self.viewState = .reg
                        self.auth.nextAuth.toggle()
                    }, label: {
                        ButtonView(model: .reg,
                                   state: .constant(.activeWhite),
                                   frame: (getWidth() - 40, 50))
                    })
                })
            }
        })
        .onAppear(perform: {
           // self.auth.checkHaveUser()
        })
    }
}

struct LoadPreview_Previews: PreviewProvider {
    static var previews: some View {
        LoadPreview()
    }
}
