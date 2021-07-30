//
//  Person.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import UIKit

class User: Identifiable {
    
    var id: String
    var emailAddress: String
    var password: String
    
    var firstName: String
    var lastName: String
    var dateOfBirth: String
    var avatar: UIImage
    
    init(id: String, emailAddress: String, password: String,
         firstName: String, lastName: String,
         dateOfBirth: String) {
        self.id = id
        self.emailAddress = emailAddress
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.avatar = UIImage(named: "MirceaCartarescu") ?? UIImage()
    }
}
