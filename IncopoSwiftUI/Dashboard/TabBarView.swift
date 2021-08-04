//
//  TabBarView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var viewModel: TabBarViewModel
    @State private var selection = 1
    
    var body: some View {
        
        TabView(selection: $selection) {
            viewModel.currentViewController(for: selection)
                .tabItem {
                    Label(
                        title: { Text("Home") },
                        icon: { Image(systemName: "house") }
                    )
                }
                .tag(1)
            
            viewModel.currentViewController(for: selection)
                .tabItem {
                    Label(
                        title: { Text("Add") },
                        icon: { Image(systemName: "plus") }
                    )
                }
                .tag(2)
            
            viewModel.currentViewController(for: selection)
                .tabItem {
                    Label(
                        title: { Text("Favorites") },
                        icon: { Image(systemName: "heart") }
                    )
                }
                .tag(3)
        }
        .accentColor(Color(.black))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(TabBarViewModel())
    }
}
