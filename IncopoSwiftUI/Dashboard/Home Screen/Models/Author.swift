//
//  Author.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation

class Author: User {
    let authorID = UUID()
    let user: User
    
    let posts: [Post]
    
    init(user: User, posts: [Post]) {
        self.user = user
        self.posts = posts
        super.init(emailAddress: user.emailAddress,
                   password: user.password,
                   firstName: user.firstName,
                   lastName: user.lastName,
                   dateOfBirth: user.dateOfBirth)
    }
}
