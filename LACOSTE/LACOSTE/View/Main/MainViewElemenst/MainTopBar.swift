//
//  MainTopBar.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 10.03.23.
//

import SwiftUI

struct MainTopBar: View {
    @Binding var notificationCount: Int
    let clickBell: () -> ()
    var body: some View {
        ZStack{
            HStack{
                Text("Lacoste")
                    .font(.custom(AppFont.pacifico, size: 39))
                
                Spacer()
                
                BellView(notificationCount: $notificationCount)
                .onTapGesture {
                    clickBell()
                }
        }
            .frame(width: getWidth() - 40, height: 50)
            
        }
    }
}

struct MainTopBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTopBar(notificationCount: .constant(0)){ }
    }
}
