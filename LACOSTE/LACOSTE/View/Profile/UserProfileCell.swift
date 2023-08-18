//
//  UserProfileCell.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 29.03.23.
//

import SwiftUI

struct UserProfileCell: View {
    //@EnvironmentObject var mainVM: MainViewModel
    @EnvironmentObject var profile: ProfileVM
    var body: some View {
        ZStack {
            VStack(content: {
                HStack(content: {
//                    if let _ = mainVM.juliet.image {
//                        Image(base64String: mainVM.juliet.image!)!
                        //Image(AppImage.AppIcon.userImage)
                    if let urlPhoto = profile.profile.photo{
                        AsyncImage(url: URL(string: urlPhoto)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 150)
                                .background(.black)
                                .cornerRadius(10)
                        } placeholder: {
                            Color.purple.opacity(0.1)
                        }
                    }
                    
                    VStack(content: {
                        if let name = profile.profile.name {
                            HStack(content: {
                                Text(name)
                                    .bold()
                                    .font(.system(size: 24))
                                    .foregroundColor(AppColor.black)
                                Spacer()
                            })
                        }
                        if let secondName = profile.profile.secondName {
                            HStack(content: {
                                Text(secondName)
                                    .bold()
                                    .font(.system(size: 24))
                                    .foregroundColor(AppColor.black)
                                Spacer()
                            })
                        }
                        
//                        HStack(content: {
//                            Text("\(self.mainVM.juliet.age)")
//                                .foregroundColor(AppColor.gray)
//                                .font(.system(size: 12))
//                            Spacer()
//                        })
                    })
                })
            })
        }
    }
}

struct UserProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileCell().environmentObject(MainViewModel())
    }
}
