//
//  SearchTextField.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 10.03.23.
//

import SwiftUI

struct SearchTextField: View {
    @State var frame: (width: CGFloat, height: CGFloat)
    @State var placholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(content:{
            HStack(content:{
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(AppColor.black)
                TextField(placholder, text: $text)
            })
            .padding()
            .frame(width: getWidth() - 20 ,height: 50)
            .background(AppColor.silver)
            .cornerRadius(10)
            
        })
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField(frame: (340, 50),
                        placholder: "Поиск",
                        text: .constant(""))
    }
}
