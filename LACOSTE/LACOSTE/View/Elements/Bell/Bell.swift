//
//  Bell.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 10.03.23.
//

import SwiftUI

struct BellView: View {
    @Binding var notificationCount: Int
    var body: some View {
        ZStack{
           Image(systemName: "bell")
                .resizable()
                .scaledToFit()
                .frame(width: 27, height: 27)
            VStack{
                HStack{
                    Spacer()
                    Text(notificationCount > 99 ? "99+" : "\(notificationCount)")
                        .bold()
                        .font(.system(size: 10))
                        .foregroundColor(AppColor.white)
                        .frame(width: 15, height: 15)
                        .background(.red)
                        .cornerRadius(10)
                }
                Spacer()
            }.frame(width: 27, height: 27)
   }.frame(width: 27, height: 27)
    }
}

struct BellView_Previews: PreviewProvider {
    static var previews: some View {
        BellView(notificationCount: .constant(1))
    }
}
