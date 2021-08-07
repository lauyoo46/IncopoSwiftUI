//
//  FavoritesView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct FavoritesView: View {
    let samplePosts = SamplePosts()
    let posts   = SamplePosts().getPosts()
    let authors = SampleAuthors().getAuthors()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Favorites")
                .font(.title)
                .fontWeight(.heavy)
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(posts) { post in
                        FavoritesEntryView(post: post, user: samplePosts.getAuthorForPost(post: post))
                            .padding(.vertical, 5)
                        
                        Divider()
                            .frame(height: 1)
                            .background(Color.black)
                            .opacity(0.3)
                    }
                }
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
