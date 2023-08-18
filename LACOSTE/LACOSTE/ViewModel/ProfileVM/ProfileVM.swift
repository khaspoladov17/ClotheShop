//
//  ProfileVM.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 06.04.23.
//

import Foundation
import Alamofire


class ProfileVM: ObservableObject{
    @Published var profile = Profile()
    //htpp://localhost:8080/getProfile
    func getRequest(url:String, httpMethod:HTTPMethod){
        //1. Проверка URL
       // let url:String = "htpp://localhost:8080/getProfile"
        guard let urlAdress = URL(string: url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!) else {return }
      
        //2.Создать и собрать сам запрос
        var request = URLRequest(url: urlAdress)
        request.httpMethod = httpMethod.rawValue
        
        //3.Отправили запрос
        AF.request(request)
            .response { responce in //4. Получение ответа
                //5.Проверяем пуст ли responce.data
                guard let data = responce.data else { return }
                
                //6.Проверяем статус запроса
                if let status = responce.response?.statusCode {
                    switch status {
                    case 200: do { //7.1 Не ошибка
                        do {
                            let decoder = JSONDecoder()
                            let result = try decoder.decode(ProfileData.self, from: data)
                            
                            //9.После декодирования , объект записываем сюда
//                            guard let profil = result.profil else {return}
//                            self.profile = profil
                            if let profil = result.profile {
                                self.profile = profil
                            }
                            
                        } catch {
                            //8. Проверка на декодирование
                            print("Объект не был декодирован")
                        }
                    }
                    default: do { //7.2 Ошибка
                        print("Ошибка запроса") }
                    }
                }
                
                //Статус 200 - Успешный запрос
                //400 - Нет сайта (нет доступа к указанной ссылке)
                //403 - Вы не авторизованы
                //500 < и выше(600) - Проблема на стороне сервера
                
                
            }
        
        
    }
}

class ProfileData: Identifiable, Codable{
    var id:Int?
    var profile:Profile?
    
    init(id: Int? = nil, profile: Profile? = nil) {
        self.id = id
        self.profile = profile
    }
}

class Profile: Identifiable, Codable{
    var id:Int?
    var name:String?
    var secondName:String?
    var firstName:String?
    var birthday:String?
    var photo:String?
    var aboutMe:String?
    
    init(id: Int? = nil, name: String? = nil, secondName: String? = nil, firstName: String? = nil, birthday: String? = nil, photo: String? = nil, aboutMe: String? = nil) {
        self.id = id
        self.name = name
        self.secondName = secondName
        self.firstName = firstName
        self.birthday = birthday
        self.photo = photo
        self.aboutMe = aboutMe
    }
}
