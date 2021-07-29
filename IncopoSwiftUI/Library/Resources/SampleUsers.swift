//
//  SampleUsers.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 29.07.2021.
//

import Foundation

class SampleUsers {
    
    static func getSampleUsers() -> [User] {
        var users = [User]()
        
        let user1 = User(emailAddress: "valy@yahoo.com", password: "valy", firstName: "Valy", lastName: "Popescu", dateOfBirth: "08-03-1998")
        let user2 = User(emailAddress: "ionut@yahoo.com", password: "ionut", firstName: "Ionut", lastName: "Burz", dateOfBirth: "30-07-1993")
        let user3 = User(emailAddress: "nico@yahoo.com", password: "nico", firstName: "Nico", lastName: "Popescu", dateOfBirth: "17-03-1995")
        let user4 = User(emailAddress: "ioana@yahoo.com", password: "ioana", firstName: "Ioana", lastName: "Burz", dateOfBirth: "04-03-1998")
        let user5 = User(emailAddress: "mihai@yahoo.com", password: "mihai", firstName: "Mihai", lastName: "Popescu", dateOfBirth: "22-03-1992")
        let user6 = User(emailAddress: "dan@yahoo.com", password: "dan", firstName: "Dan", lastName: "Burz", dateOfBirth: "11-03-1993")
        
        users.append(user1)
        users.append(user2)
        users.append(user3)
        users.append(user4)
        users.append(user5)
        users.append(user6)
        
        return users
    }
}
