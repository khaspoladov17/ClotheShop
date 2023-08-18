//
//  MainGridCellView.swift
//  ClothesShop
//
//  Created by Ровшан Насибов on 02.03.2023.
//

import SwiftUI

struct  MainGridCellView: View {
    @Binding var item: MainGridDataModel
    @State var frame: (w: CGFloat, h: CGFloat)
    
    let topLike: (_ item: MainGridDataModel) -> ()
    let topDescription: (_ item: MainGridDataModel) -> ()
    
    private var likeIconSize: (w: CGFloat, h: CGFloat) {
        return (((frame.w / 2) - 35), (-(frame.w / 2) + 35))
    }
    
    var body: some View {
        ZStack {
            VStack(content: {
                item.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: (frame.w),
                           height: (frame.w))
                    .background(AppColor.gray.opacity(0.2))
                    .cornerRadius(15)
                    .overlay(content: {
                        VStack{
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(item.like ? AppColor.red : AppColor.gray)
                                .frame(width: 18, height: 18)
                        }
                        .frame(width: 40, height: 40)
                        .background(AppColor.white)
                        .cornerRadius(15)
                        .padding()
                        .offset(x: ((frame.w / 2) - 35), y: (-(frame.w / 2) + 35))
                        .shadow(color: AppColor.gray.opacity(0.3),
                                radius: 10)
                        .onTapGesture {
                            self.topLike(item)
                        }
                    })
                
                HStack {
                    if let title = item.title{
                        Text(title)
                            .bold()
                            .lineLimit(2)
                            .font(.system(size: 18, design: .serif))
                    }
                    Spacer()
                }
                
                HStack {
                    if let shortDescription = item.shortDescription{
                        Text(shortDescription)
                            .lineLimit(2)
                            .foregroundColor(AppColor.gray)
                            .font(.system(size: 16, design: .serif))
                    }
                    Spacer()
                }
                
                Spacer()
            })
            .frame(width: frame.w,
                   height: (frame.h),
                   alignment: .leading)
        }
        .onTapGesture {
            self.topDescription(item)
        }
    }
}

struct MainGridCellView_Previews: PreviewProvider {
    static var previews: some View {
        MainGridCellView(item: .constant(MainGridDataModel(id: 0,
                                                           title: "New model of Lacoste",
                                                           categoryId: 0,
                                                           categoryValue: .all,
                                                           description: "Designed by Lacoste in California")),
                         frame: ((UIScreen.main.bounds.width - 20) / 2,
                                 UIScreen.main.bounds.width - 20),
                         topLike: { _ in },
                         topDescription: { _ in})
    }
}
