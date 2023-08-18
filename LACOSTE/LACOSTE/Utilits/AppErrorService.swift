//
//  AppErrorService.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 24.03.23.
//

import Foundation

enum AppErrorService{
    enum Auth{
        static let errorEmail = "Wrong Mail"
        static let errorPassword = "Wrong Password"
        static let regError = "Sign in Error"
        static let authError = "Sign up Error"
        static let userNotFindError = ""
    }
    enum Empty{
        static let empty = ""
        static let succes = "Great!"
    }
}
