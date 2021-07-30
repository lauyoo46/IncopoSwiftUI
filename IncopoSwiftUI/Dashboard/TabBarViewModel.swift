//
//  TabBarViewModel.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import SwiftUI

class TabBarViewModel: ObservableObject {
    
    let homeViewModel: HomeViewModel
    let addPostViewModel: AddPostViewModel
    let favoritesViewModel: FavoritesViewModel
    
    var childViews: [AnyView] = []
    
    init() {
        self.homeViewModel = HomeViewModel()
        self.addPostViewModel = AddPostViewModel()
        self.favoritesViewModel = FavoritesViewModel()
    }
    
    func currentViewController(for selection: Int) -> AnyView {
        switch selection {
        case 1:
            return childViews[0]
            
        case 2:
            return childViews[1]
            
        case 3:
            return childViews[2]
            
        default:
            break
        }
        return childViews[2]
    }
    
}
