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
    @State var isShowingHamburgerMenu = false
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            VStack {
                HStack {
                    HamburgerButton(isShowingHamburgerMenu: $isShowingHamburgerMenu)
                    
                    Spacer()
                    
                    Button(action: {
                        isFavorite.toggle()
                    }, label: {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .font(.system(size: 30))
                            .foregroundColor(.red)
                    })
                    .disabled(isShowingHamburgerMenu ? true : false)
                    
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
                .disabled(isShowingHamburgerMenu ? true : false)
                
                Spacer()
            }
            .offset(x: isShowingHamburgerMenu ? UIScreen.main.bounds.width/2 : 0)
            
            if isShowingHamburgerMenu {
                HamburgerMenuView()
                    .frame(width: UIScreen.main.bounds.width/2, alignment: .leading)
                    .transition(.move(edge: .leading))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}

struct HamburgerButton: View {
    @Binding var isShowingHamburgerMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isShowingHamburgerMenu.toggle()
            }
        }, label: {
            Image(systemName: "line.horizontal.3")
                .font(.system(size: 30))
                .foregroundColor(.black)
        })
    }
}
