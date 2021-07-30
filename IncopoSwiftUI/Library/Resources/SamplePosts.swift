//
//  SamplePosts.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 29.07.2021.
//

import UIKit

class SamplePosts {
    
    let sampleAuthors = SampleAuthors()
    
    func getPosts() -> [Post] {
        var posts = [Post]()
        let authors = sampleAuthors.getAuthors()
        
        let post1 = Post(id: "1",
                         title: "Prologue of the Beginning and the End",
                         content: """
                            când ai nevoie de dragoste nu ţi se dă dragoste.
                            când trebuie să iubeşti nu eşti iubit.
                            când eşti singur nu poţi să scapi de singurătate.
                            când eşti nefericit nu are sens să o spui.
                            
                            când vrei să strângi în braţe nu ai pe cine.
                            când vrei să dai un telefon sunt toţi plecaţi.
                            când eşti la pământ cine se interesează de tine?
                            cui îi pasă? cui o să-i pese vreodată?
                            
                            fii tu lângă mine, gândeşte-te la mine.
                            poartă-te tandru cu mine, nu mă chinui, nu mă face gelos,
                            nu mă părăsi, căci n-aş mai suporta încă o ruptură.
                            fii lângă mine, ţine cu mine.
                            
                            înţelege-mă, iubeşte-mă, nu-mi trebuie partuze, nici conversaţie,
                            fii iubita mea permanentă.
                            hai să uităm regula jocului, să nu mai ştim că sexul e o junglă.
                            să ne ataşăm, să ajungem la echilibru.
                            
                            dar nu sper nimic. nu primeşte dragoste
                            când ai nevoie de dragoste.
                            când trebuie să iubeşti nu eşti iubit.
                            când eşti la pamânt nici o femeie nu te cunoaşte.
                            """,
                         date: "28-01-2004",
                         location: "Cluj-Napoca",
                         genre: Genre.drama,
                         authorID: authors[0].authorID,
                         authorName: "\(authors[0].firstName) \(authors[0].lastName)",
                         noLikes: 11,
                         noComments: 2,
                         comments: [],
                         picture: UIImage(named: "sampleImage1") ?? UIImage())
        let post2 = Post(id: "2",
                         title: "Time Travel Paranoia",
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
        let post3 = Post(id: "3",
                         title: "Parallel Porcess Paranoia",
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
        let post4 = Post(id: "4",
                         title: "Interpreter Rendezvous",
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
        let post5 = Post(id: "5",
                         title: "Starmine Rendezvous",
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
        let post6 = Post(id: "6",
                         title: "Butterfly Effect's Divergence",
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
        let post7 = Post(id: "7",
                         title: "Divergence Singularity",
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
        let post8 = Post(id: "8",
                         title: "Chaos Theory Homeostasis I",
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
