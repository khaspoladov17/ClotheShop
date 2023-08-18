//
//  NetworkService.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 27.03.23.
//

import Foundation
import FirebaseAuth

class NetworkService{
    // Регистрация
    class func signIn(email: String, password:String, complition: @escaping(ResponseBody) -> ()) {
         Auth.auth().createUser(withEmail: email, password: password){ result, error in
            if error != nil {
                complition(ResponseBody(id: 0, state: false, error: AppErrorService.Auth.authError))
            }
            if result != nil {
                complition(ResponseBody(id: 0, state: true, error: AppErrorService.Empty.succes))
            }
        }
    }
    
    //Авторизация
    class func signUp(email: String, password:String, complition: @escaping(ResponseBody) -> ()) {
       Auth.auth().signIn(withEmail: email, password: password){ result, error in
            if error != nil {
                complition(ResponseBody(id: 0, state: false, error: AppErrorService.Auth.authError))
            }
            if result != nil {
                complition(ResponseBody(id: 0, state: true, error: AppErrorService.Empty.succes))
            }
        }
    }
    //Проверка Авторизации
    class func checkAuth(complition: @escaping(ResponseBody) -> ()) {
        Auth.auth().addStateDidChangeListener{ _ , user in
            guard user != nil else {
                return complition(ResponseBody(id: 0, state: false, error: AppErrorService.Auth.userNotFindError))
            }
            complition(ResponseBody(id: 0, state: true, error: AppErrorService.Empty.empty))
        }
    }
    
}

    class ResponseBody: Identifiable, Codable {
    var id: Int
    var state: Bool
    var error: String
    
    init(id: Int, state: Bool, error: String) {
        self.id = id
        self.state = state
        self.error = error
    }
}
