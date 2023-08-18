//
//  ShopDescriptionView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 22.03.23.
//

import SwiftUI

struct ShopDescriptionView: View {
    @EnvironmentObject var products: MainGridVM
    @Binding var dataModel: MainGridDataModel
    @Binding var backButton: Bool
    @State var index: Int
    
    var body: some View {
        ZStack(content: {
            VStack(content: {
                TopBarDescriptionView(title: .title,
                                      backButton: $backButton,
                                      frame: (width: getWidth() - 20, height: 50))
                
                List{
                    VStack(spacing: 20, content: {
                        MainGridCellView(item: $dataModel,
                                         frame: (w: getWidth() - 40 , h: getWidth()),
                                         topLike: { item in
                            self.products.changeLike(index: index,
                                                  id: dataModel.id!)
                        },
                                         topDescription: { _ in })
                        
                        if let description = dataModel.description {
                            Text(description)
                                .frame(width: getWidth() - 40, alignment: .leading)
                                .multilineTextAlignment(.leading)
                        }
                        
                        Text("Choose size")
                            .bold()
                            .foregroundColor(AppColor.black)
                            .font(.system(size: 25, design: .serif))
                            .frame(width: getWidth() - 40, alignment: .leading)
                        
                        SizeCollection()
                        
                        Divider()
                        
                        HStack(content: {
                            VStack(content: {
                                Text("Price")
                                    .bold()
                                    .foregroundColor(AppColor.gray)
                                    .font(.system(size: 20, design: .serif))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getWidth() / 3, alignment: .leading)
                                Text(dataModel.price)
                                    .bold()
                                    .foregroundColor(AppColor.black)
                                    .font(.system(size: 25, design: .serif))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getWidth() / 3, alignment: .leading)
                            })
                            
                            Spacer()
                            
                            ButtonView(model: .magazine,
                                       state: .constant(.activeBlack),
                                       imageLeft: AppImage.AppIcon.magazineIcon,
                                       frame: (width: getWidth() / 2, height: 50))
                        })
                        .frame(width: getWidth() - 40, alignment: .leading)
                    })
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            })
        }).navigationBarHidden(true)
    }
}

struct ShopDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ShopDescriptionView(dataModel: .constant(MainGridDataModel(id: 1, image: Image(AppImage.Category.Glass.glass7),
                                                                   title: "New model of Lacoste" ,
                                                                   categoryId: 1,
                                                                   categoryValue: .glass,
                                                                   description: "Designed by Lacoste in California \nAssambled in Canada \nModel A2184.. " ,
                                                                   shortDescription: "Product description")), backButton: .constant(false), index: 0)
        .environmentObject(MainGridVM())
    }
}

