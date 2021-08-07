//
//  SearchView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var viewModel: SearchViewModel
    let posts = SamplePosts().getPosts()
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                IncopoSearchBar(text: $viewModel.searchText)
                    .overlay(
                        RoundedRectangle(cornerRadius: 22)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    .padding(.vertical, 10)
                
                Text("Recents")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                    .padding(.horizontal, 10)
                
                ForEach(posts) { post in
                    RecentsEntryView(poemName: post.title)
                        .padding(.vertical, 8)
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.black)
                        .opacity(0.6)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(SearchViewModel())
    }
}
