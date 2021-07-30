//
//  SampleAuthors.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 29.07.2021.
//

import Foundation

class SampleAuthors {
    
    let sampleUsers = SampleUsers()
    
    func getAuthors() -> [Author] {
        var authors = [Author]()
        
        let users = sampleUsers.getUsers()
        
        let author1 = Author(authorID: "1", user: users[0], postIDs: ["1", "2", "3"])
        let author2 = Author(authorID: "2", user: users[1], postIDs: [])
        let author3 = Author(authorID: "3", user: users[2], postIDs: ["4", "5"])
        let author4 = Author(authorID: "4", user: users[3], postIDs: ["6"])
        let author5 = Author(authorID: "5", user: users[4], postIDs: [])
        let author6 = Author(authorID: "6", user: users[5], postIDs: ["7", "8"])
        
        authors.append(author1)
        authors.append(author2)
        authors.append(author3)
        authors.append(author4)
        authors.append(author5)
        authors.append(author6)
        
        return authors
    }
}
