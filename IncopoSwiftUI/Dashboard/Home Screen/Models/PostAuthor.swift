//
//  PostAuthor.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 03.08.2021.
//

import Foundation

class PostAuthor {
    
    let post: Post
    let author: Author
    
    init(post: Post, author: Author) {
        self.post = post
        self.author = author
    }
}
