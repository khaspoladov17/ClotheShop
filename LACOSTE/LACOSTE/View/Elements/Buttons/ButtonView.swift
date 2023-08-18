//
//  ButtonView.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 06.03.23.
//

import SwiftUI

struct ButtonView: View {
    @State var model: ButtnoModel
    @Binding var state: ButtonState
    @State var imageLeft: String?
    @State var imageRight: String?
    @State var frame: (width: CGFloat,height: CGFloat)
    var body: some View {
        ZStack{
            HStack{
                Spacer()
                if let left = imageLeft {
                    Image(left)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(state.style.foregroundColor)
                        .background(state.style.background)
                }
                
                
                Text(model.title)
                    .bold()
                    .font(.system(size: 18))
                    .foregroundColor(state.style.foregroundColor)
                    .background(state.style.background)
                if let right = imageRight {
                    Image(right)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(state.style.foregroundColor)
                        .background(state.style.background)
                    
                }
                
                Spacer()
            }
        }
        .frame(width: frame.width , height: frame.height)
        .background(state.style.background)
        .cornerRadius(10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(model: .ok, state: .constant(.activeBlack), imageLeft: AppImage.AppIcon.nextIcon,
                   imageRight: AppImage.AppIcon.nextIcon,
                   frame: (340,50))
    }
}
