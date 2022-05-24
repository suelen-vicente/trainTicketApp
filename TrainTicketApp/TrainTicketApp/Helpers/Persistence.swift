//
//  Persistence.swift
//  TrainTicketApp
//
//  Created by Suelen Vicente on 2022-05-24.
//

import Foundation
import FirebaseFirestore

class Persistence{
    static func addUser(user: User){
            let db = Firestore.firestore()
            
            // Add a new document with a generated ID
            var ref: DocumentReference? = nil
            ref = db.collection("user").addDocument(data: [
                "firstName": user.firstName,
                "lastName": user.lastName,
                "email": user.email,
                "password": user.password,
                "id": user.id,
                "birthDate": user.birthDate,
                "admin": user.admin
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                }
            }
        }
}
