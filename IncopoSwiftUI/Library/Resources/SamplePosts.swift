//
//  SamplePosts.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 29.07.2021.
//

import UIKit

class SamplePosts {
    
    static func getSamplePosts() -> [Post] {
        var posts = [Post]()
        let authors = SampleAuthors.getSampleAuthors()
        
        let post1 = Post(title: "Prologue of the Beginning and the End",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-01-2020",
                         location: "Cluj-Napoca",
                         genre: Genre.drama,
                         authorID: authors[0].authorID,
                         authorName: "\(authors[0].firstName) \(authors[0].lastName)",
                         noLikes: 11,
                         noComments: 2,
                         comments: [],
                         picture: UIImage(named: "sampleImage1") ?? UIImage())
        let post2 = Post(title: "Time Travel Paranoia",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-02-2020",
                         location: "Cluj-Napoca",
                         genre: Genre.scifi,
                         authorID: authors[0].authorID,
                         authorName: "\(authors[0].firstName) \(authors[0].lastName)",
                         noLikes: 22,
                         noComments: 3,
                         comments: [],
                         picture: UIImage(named: "sampleImage2") ?? UIImage())
        let post3 = Post(title: "Parallel Porcess Paranoia",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-03-2020",
                         location: "Cluj-Napoca",
                         genre: Genre.drama,
                         authorID: authors[0].authorID,
                         authorName: "\(authors[0].firstName) \(authors[0].lastName)",
                         noLikes: 232,
                         noComments: 55,
                         comments: [],
                         picture: UIImage(named: "sampleImage3") ?? UIImage())
        let post4 = Post(title: "Interpreter Rendezvous",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-04-2020",
                         location: "Cluj-Napoca",
                         genre: Genre.elegy,
                         authorID: authors[2].authorID,
                         authorName: "\(authors[2].firstName) \(authors[2].lastName)",
                         noLikes: 76,
                         noComments: 4,
                         comments: [],
                         picture: UIImage(named: "sampleImage4") ?? UIImage())
        let post5 = Post(title: "Starmine Rendezvous",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-05-2020",
                         location: "Oradea",
                         genre: Genre.scifi,
                         authorID: authors[2].authorID,
                         authorName: "\(authors[2].firstName) \(authors[2].lastName)",
                         noLikes: 6,
                         noComments: 231,
                         comments: [],
                         picture: UIImage(named: "sampleImage5") ?? UIImage())
        let post6 = Post(title: "Butterfly Effect's Divergence",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-06-2020",
                         location: "Oradea",
                         genre: Genre.romance,
                         authorID: authors[3].authorID,
                         authorName: "\(authors[3].firstName) \(authors[3].lastName)",
                         noLikes: 115,
                         noComments: 2,
                         comments: [],
                         picture: UIImage(named: "sampleImage6") ?? UIImage())
        let post7 = Post(title: "Divergence Singularity",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-07-2020",
                         location: "Oradea",
                         genre: Genre.romance,
                         authorID: authors[5].authorID,
                         authorName: "\(authors[5].firstName) \(authors[5].lastName)",
                         noLikes: 5466,
                         noComments: 2445,
                         comments: [],
                         picture: UIImage(named: "sampleImage7") ?? UIImage())
        let post8 = Post(title: "Chaos Theory Homeostasis I",
                         content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                         date: "28-08-2020",
                         location: "Oradea",
                         genre: Genre.tragedy,
                         authorID: authors[5].authorID,
                         authorName: "\(authors[5].firstName) \(authors[5].lastName)",
                         noLikes: 359,
                         noComments: 66,
                         comments: [],
                         picture: UIImage(named: "sampleImage8") ?? UIImage())
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        posts.append(post4)
        posts.append(post5)
        posts.append(post6)
        posts.append(post7)
        posts.append(post8)
        
        return posts
    }
}
