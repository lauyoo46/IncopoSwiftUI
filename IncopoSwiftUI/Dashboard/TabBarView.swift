//
//  TabBarView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label(
                        title: { Text("Home") },
                        icon: { Image(systemName: "house") }
                    )
                }
            
            SearchView()
                .tabItem {
                    Label(
                        title: { Text("Search") },
                        icon: { Image(systemName: "magnifyingglass") }
                    )
                }
            
            AddPostView()
                .tabItem {
                    Label(
                        title: { Text("Add") },
                        icon: { Image(systemName: "plus") }
                    )
                }
            
            FavoritesView()
                .tabItem {
                    Label(
                        title: { Text("Favorites") },
                        icon: { Image(systemName: "star") }
                    )
                }
            
            ProfileView()
                .tabItem {
                    Label(
                        title: { Text("Profile") },
                        icon: { Image(systemName: "person.crop.circle") }
                    )
                }
        }
        .accentColor(Color("whiteColor"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
