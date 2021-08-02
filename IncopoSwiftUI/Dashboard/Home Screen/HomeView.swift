//
//  HomeView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    let authors = SampleAuthors().getAuthors()
    let posts   = SamplePosts().getPosts()
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 30))
                
                Spacer()
                
                Image(systemName: "heart")
                    .font(.system(size: 30))
                    .foregroundColor(.red)
            }
            .padding(.top, 10)
            .padding(.horizontal, 30)
            
           
            ScrollView(.vertical) {
                PostView(author: authors[0], post: posts[0])
            }
            
            Spacer()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}
