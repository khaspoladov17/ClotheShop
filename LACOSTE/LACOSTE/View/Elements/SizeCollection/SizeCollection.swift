//
//  SizeCollection.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 23.03.23.
//

import SwiftUI

struct SizeCollection: View {
    private var sizeValue = ["S", "M", "L"]
    
    var body: some View {
        ZStack{
            HStack(spacing: 20, content: {
                ForEach(sizeValue.indices, id: \.self){ index in
                    Text(sizeValue[index])
                        .bold()
                        .padding()
                        .foregroundColor(AppColor.black)
                        .frame(width: 50, height: 50)
                        .background(AppColor.white)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(AppColor.black, lineWidth: 1)
                    )
                }
                Spacer()
            })
            .frame(width: getWidth() - 40)
        }
    }
    
    struct SizeCollection_Previews: PreviewProvider {
        static var previews: some View {
            SizeCollection()
        }
    }
}
