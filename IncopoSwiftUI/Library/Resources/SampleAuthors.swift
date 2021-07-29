//
//  SampleAuthors.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 29.07.2021.
//

import Foundation

class SampleAuthors {
    
    static func getSampleAuthors() -> [Author] {
        var authors = [Author]()
        
        let users = SampleUsers.getSampleUsers()
        let posts = SamplePosts.getSamplePosts()
        
        let author1 = Author(user: users[0], posts: [posts[0], posts[1], posts[2]])
        let author2 = Author(user: users[1], posts: [])
        let author3 = Author(user: users[2], posts: [posts[3], posts[4]])
        let author4 = Author(user: users[3], posts: [posts[5]])
        let author5 = Author(user: users[4], posts: [])
        let author6 = Author(user: users[5], posts: [posts[6], posts[7]])
        
        authors.append(author1)
        authors.append(author2)
        authors.append(author3)
        authors.append(author4)
        authors.append(author5)
        authors.append(author6)
        
        return authors
    }
}
