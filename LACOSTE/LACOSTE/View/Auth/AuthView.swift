//
//  AuthView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 24.03.23.
//

import SwiftUI

struct AuthView: View {
    @EnvironmentObject private var auth: AuthVM
    @State var viewState: AuthState
    
    var body: some View {
        ZStack(content: {
            NavigationLink(isActive: $auth.showNextView,
                           destination: {
                TabViewContent()
            },label: {
                EmptyView()
            })
            Image(AppImage.Wallpaper.wallpaper2)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 6)
            
            VStack(spacing: 0, content: {
                Text("Sign In")
                .font(.custom(AppFont.pacifico, size: 35))
                // MARK: - Error
                VStack(content: {
                    VStack(content: {
                        Text(auth.error.value)
                            .font(.custom(AppFont.pacifico, size: 16))
                            .foregroundColor(AppColor.white)
                            .padding()

                    }).frame(width: getWidth()-40)
                    .background(AppColor.red.opacity(0.6))
                    .cornerRadius(10)
                    .opacity(auth.error.state == true ? 1 : 0)
                    .onTapGesture {
                        self.auth.error.state.toggle()
                    }
                    // MARK: - Поля
                VStack(spacing:15 , content: {
                    TextField("Login", text:$auth.email, onEditingChanged: {
                        (isChanged) in
                        guard auth.email != "" else { return self.auth.error.state = false }
                        if !isChanged {
                            if self.auth.isValidEmail(auth.email) {
                                self.auth.error.value = AppErrorService.Empty.empty
                                self.auth.error.state = false
                            } else {
                                self.auth.error.value = AppErrorService.Auth.errorEmail
                                self.auth.error.state = true
                            }
                        }
                    })
                    SecureField("Password", text: $auth.password)
                    if viewState == .reg {
                        SecureField("Password", text: $auth.repeatPassword)
                    }
                })
                .padding()
                .frame(width: getWidth()-40)
                .background()
                .cornerRadius(10)
                })
                Spacer()
                    .frame(width: 1, height: 50)
                Button(action: {
                    if viewState == .auth{
                        self.auth.auth()
                    }
                    else {
                        guard auth.checkPassword() == true else {return}
                        self.auth.reg()
                    }
                }, label: {
                    if viewState == .auth {
                        ButtonView(model: .auth,
                                   state: .constant(.activeBlack),
                                   frame: (getWidth() - 40, 50))
                    }
                    else{
                        
                            ButtonView(model: .reg,
                                       state: .constant(.activeWhite),
                                       frame: (getWidth() - 40, 50))
                    }
                })
            })
        })
        .animation(.easeOut(duration: 1), value: auth.error.state)
    }
}



enum AuthState{
    case auth
    case reg
}
