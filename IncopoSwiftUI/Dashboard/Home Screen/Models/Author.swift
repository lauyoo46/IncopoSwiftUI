//
//  Author.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation

class Author: User {
    let authorID: String
    let user: User
    
    let postIDs: [String]
    
    init(authorID: String, user: User, postIDs: [String]) {
        self.authorID = authorID
        self.user = user
        self.postIDs = postIDs
        super.init(id: authorID,
                   emailAddress: user.emailAddress,
                   password: user.password,
                   firstName: user.firstName,
                   lastName: user.lastName,
                   dateOfBirth: user.dateOfBirth)
    }
}
