//
//  DataBaseService.swift
//  LACOSTE
//
//  Created by Mahmud Khaspoladov on 30.03.23.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import SwiftUI

class DataBaseService{
   class func getDataModel(complition: @escaping([ListDataModel]) -> ()){
       let db = Firestore.firestore()
        db.collection("notificationList").getDocuments(){ (querySnapshot, error) in
            guard error == nil else {return print(error!.localizedDescription)}
            
            if let querySnapshot = querySnapshot {
                var result = [ListDataModel]()
                
                for document in querySnapshot.documents {
                    let data = document.data()
                    let id = data["id"] as? Int ?? 0
                    let title = data["title"] as? String ?? ""
                    let description = data["description"] as? String ?? ""
                    
                    result.append(ListDataModel(id: id,
                                                title: title,
                                                description: description))
                }
                
                complition(result)
            }
        }
    }
    
    class func addDataModel(in item: ListDataModel){
        let db = Firestore.firestore()
         db.collection("notificationList").addDocument(data: [
            "id": "\(item.id!)",
            "title": item.title ?? "",
            "description": item.description ?? ""
        ]){ (error) in
             guard error == nil else {return print(error!.localizedDescription)}
             print("success")
            
         }
     }
    
    class func getProfilDataModel(complition: @escaping(ProfilDataModel) -> ()){
        let db = Firestore.firestore()
         db.collection("profilDataModel").getDocuments(){ (querySnapshot, error) in
             guard error == nil else {return print(error!.localizedDescription)}
             
             if let querySnapshot = querySnapshot {
                 var profile = ProfilDataModel()
                 
                 for document in querySnapshot.documents {
                     let data = document.data()
                     let id = data["id"] as? Int ?? 0
                     let name = data["name"] as? String ?? ""
                     let birthday = data["birthday"] as? String ?? ""
                     let firstName = data["firstName"] as? String ?? ""
                     let secondName = data["secondName"] as? String ?? ""
                     let image = data["image"] as? String ?? ""
                     
                     profile = ProfilDataModel(id: id, name: name, birthday: birthday, firstName: firstName, secondName: secondName, image: image)
                 }
                 
                 complition(profile)
             }
         }
     }
}

class ListDataModel: Identifiable, Codable {
    var id: Int?
    var title: String?
    var description: String?
    
    init(id: Int?, title: String?, description: String?) {
        self.id = id
        self.title = title
        self.description = description
    }
}

class ProfilDataModel: Identifiable, Codable {
    var id: Int?
    var imageData: Data?
    var name: String?
    var birthday: String?
    var firstName: String?
    var secondName: String?
    var image: String?
   
    init(id: Int? = nil, imageData: Data? = nil, name: String? = nil, birthday: String? = nil, firstName: String? = nil, secondName: String? = nil, image: String? = nil) {
        self.id = id
        self.name = name
        self.birthday = birthday
        self.firstName = firstName
        self.secondName = secondName
        self.image = image
    }
}

extension Image {
    init?(base64String: String){
        guard let imageData = Data(base64Encoded:base64String) else {return nil}
        guard let image = UIImage(data: imageData) else {return nil}
        self = Image(uiImage: image)
    }
}
