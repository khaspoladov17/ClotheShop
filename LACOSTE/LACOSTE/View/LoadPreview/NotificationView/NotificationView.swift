//
//  NotificationView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 01.04.23.
//

import SwiftUI

struct NotificationView: View {
    @State private var list = [ListDataModel]()
    @Binding var backButton: Bool
    
    var body: some View {
        ZStack(content: {
            VStack(spacing: 0, content: {
                TopBarDescriptionView(title: .notifi,
                                      backButton: $backButton,
                                      frame: (width: getWidth() - 20, height: 50))
                
                if !list.isEmpty {
                    List {
                        ForEach(list.indices, id: \.self){ index in
                            HStack(content: {
                                // Скачачать изображение по Url а потом настроить размеры
                                //                            AsyncImage(url: URL(string: "https://irisphoto.art/web/image/76796/22-3-404-Maximilian.jpg"))
                                
                                
                                Text(list[index].title!)
                            })
                        }
                    }
                } else {
                    VStack(content: {
                        Spacer()
                        ProgressView()
                        Spacer()
                    })
                }
            })
        })
        .navigationBarHidden(true)
        .onAppear(perform: {
            //            DataBaseService.getDataModel(){ array in
            //                self.list = array
            //            }
            //            DataBaseService.addDataModel(in: ListDataModel(id: 4, title: "Николай", description: "Петрович"))
            //
            //            DataBaseService.getDataModel(){ array in
            //                self.list = array
            //            }
        })
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(backButton: .constant(false))
    }
}
