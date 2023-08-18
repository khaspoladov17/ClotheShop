//
//  ProfileView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 29.03.23.
//

import SwiftUI

//View
struct ProfileView: View {
    
    //@StateObject private var mainVM = MainViewModel()
    @StateObject private var profile = ProfileVM()
    @State private var text: String = "Текст"
    @State private var date = Date()
    @State private var switchToggle: Bool = false
    @State private var showProfile: Bool = false
    @State private var offset: CGFloat = 60
    
    var body: some View {
        ZStack {
            VStack(content: {
                List {
//                    if let _ = mainVM.juliet.image {
//                        Image(base64String: mainVM.juliet.image!)!
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 25, height: 20)
//                    }
                    
                    Section("Профиль", content: {
                        UserProfileCell()
                            .environmentObject(profile)
                    })
                   
                        if let birthday = profile.profile.birthday {
                            Section("Дата Рождения", content: {
                              Text(birthday)
                            })
                        }
                    
                    if let aboutMe = profile.profile.aboutMe {
                        Section("О себе", content: {
                          Text(aboutMe)
                        })
                    }
                    
                    
//                    Section("Изменить имя", content: {
//                        //TextField("Имя", text: $mainVM.juliet.name)
//                    })
                }
            })
        }
        .onAppear(perform: {
//            DataBaseService.getProfilDataModel(){ profilDataModel in
//                mainVM.juliet.name = "\(profilDataModel.name!) \(profilDataModel.secondName! )"
//                mainVM.juliet.image = profilDataModel.image
//                print(profilDataModel)
//            }
            self.profile.getRequest(url: "htpp://localhost:8080/getProfile", httpMethod: .get)
        })
        .animation(.easeOut, value: switchToggle)
        .animation(.easeOut, value: offset)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
