//
//  Post.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import UIKit

enum Genre: String {
    case scifi   = "Sci-Fi"
    case drama   = "Dramatic"
    case elegy   = "Elegy"
    case epic    = "Epic"
    case fable   = "Fable"
    case hymn    = "Hymn"
    case lyric   = "Lyric"
    case parody  = "Parody"
    case psalm   = "Psalm"
    case romance = "Romance"
    case satire  = "Satire"
    case tragedy = "Tragedy"
}

class Post: Identifiable {
    
    var id = UUID()
    var title: String
    var content: String
    var date: String
    var location: String
    var genre: Genre
    
    var authorID: UUID
    var authorName: String
    
    var noLikes: Int
    var noComments: Int
    var comments: [String]
    var picture: UIImage
    
    init(title: String, content: String, date: String,
         location: String, genre: Genre, authorID: UUID, authorName: String,
         noLikes: Int, noComments: Int, comments: [String], picture: UIImage) {
        self.title = title
        self.content = content
        self.date = date
        self.location = location
        self.genre = genre
        self.authorID = authorID
        self.authorName = authorName
        self.noLikes = noLikes
        self.noComments = noComments
        self.comments = comments
        self.picture = picture
    }
}
