//
//  AuthVM.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 24.03.23.
//

import Foundation

class AuthVM: ObservableObject{
    @Published var email = String()
    @Published var password = String()
    @Published var repeatPassword = String()
    @Published var showNextView = false
    @Published var error: (value: String, state: Bool) = (AppErrorService.Empty.empty , false)
    @Published var nextTab: Bool = false
    @Published var nextAuth: Bool = false
}

extension AuthVM{
    
    func reg() {
        NetworkService.signIn(email:email, password:password){ result in
            if result.state == true {
                self.showNextView.toggle()
            } else {
                self.error = (result.error, result.state)
              }
        }
    }
    
    func auth() {
        NetworkService.signUp(email:email, password:password){ result in
            if result.state == true {
                self.showNextView.toggle()
            } else {
                self.error = (result.error, result.state)
              }
        }
    }
    
    func checkHaveUser(){
        NetworkService.checkAuth{
            result in
                if result.state == true {
                    self.nextTab.toggle()
                } else {
                    self.error = (result.error, result.state)
                  }
            }
        }   
}

extension AuthVM{
    // Проверка правильности пароля
    // true - правильный пароль, false - неправильный пароль
    func  checkPassword() -> Bool {
        guard password == repeatPassword else {
            self.error = (AppErrorService.Auth.errorPassword, true)
            return false}
        return true
    }
    
    func isValidEmail(_ email: String) -> Bool {
        //MARK: - Регулярные выражения
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
