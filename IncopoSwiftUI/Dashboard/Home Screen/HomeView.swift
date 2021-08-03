//
//  HomeView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    let samplePosts = SamplePosts()
    let authors = SampleAuthors().getAuthors()
    let posts   = SamplePosts().getPosts()
    @State var isFavorite = false
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 30))
                
                Spacer()
                
                Button(action: {
                    isFavorite.toggle()
                }, label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                })
                
            }
            .padding(.top, 10)
            .padding(.horizontal, 30)
            
            GeometryReader { proxy in
                
                TabView {
                    ForEach(posts) { post in
                        
                        PostView(author: samplePosts.getAuthorForPost(post: post),
                                 post: post)
                    }
                    .rotationEffect(.degrees(-90))
                    .frame(
                        width: proxy.size.width,
                        height: proxy.size.height
                    )
                }
                .frame(
                    width: proxy.size.height,
                    height: proxy.size.width
                )
                .rotationEffect(.degrees(90), anchor: .topLeading)
                .offset(x: proxy.size.width)
                .tabViewStyle(
                    PageTabViewStyle(indexDisplayMode: .never)
                )
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
