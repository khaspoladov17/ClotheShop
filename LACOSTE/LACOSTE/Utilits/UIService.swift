//
//  UIService.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 06.03.23.
//

import Foundation
import SwiftUI

extension View {
    func getWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    func getHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }
}
