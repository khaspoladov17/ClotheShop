//
//  ButtonModel.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 06.03.23.
//

import Foundation
import SwiftUI

enum ButtnoModel: String {
    case ok
    case back
    case next
    case magazine
    case auth
    case reg
    
    var title: String {
        switch self {
        case .ok: return "Ok"
        case .back: return "Назад"
        case .next: return "Далее"
        case .magazine: return "Buy"
        case .auth: return "Sign In"
        case .reg: return "Sign Up"
        }
    }
}

enum ButtonState {
    case activeBlack
    case activeWhite
    case disable
    
    
    var style: ButtonStyle{
        switch self {
        case .activeBlack: return ButtonStyle(id: 0,
                                              background: AppColor.black,
                                              foregroundColor: AppColor.white,
                                              borderColor: AppColor.black)
        case .disable: return ButtonStyle(id: 0,
                                          background: AppColor.gray,
                                          foregroundColor: AppColor.white,
                                          borderColor: AppColor.gray)
        case .activeWhite: return ButtonStyle(id: 0,
                                              background: AppColor.white,
                                              foregroundColor: AppColor.black,
                                              borderColor: AppColor.black)
        }
    }
}

struct ButtonStyle: Identifiable {
    var id: Int
    var background: Color
    var foregroundColor: Color
    var borderColor: Color
}
