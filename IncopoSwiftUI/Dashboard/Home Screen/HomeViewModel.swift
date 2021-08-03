//
//  HomeViewModel.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    @Published var commentText: String = ""
    
    lazy var seePostDetailsAction = PassthroughSubject<PostAuthor, Never>()
    
    func seePostDetails(for post: Post, with author: Author) {
        let postAuthor = PostAuthor(post: post, author: author)
        seePostDetailsAction.send(postAuthor)
    }
}
