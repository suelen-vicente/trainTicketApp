//
//  User.swift
//  TrainTicketApp
//
//  Created by Suelen Vicente on 2022-05-15.
//

import Foundation

struct User:Codable{
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var id: String
    var birthDate: String
    var admin: Bool
}
