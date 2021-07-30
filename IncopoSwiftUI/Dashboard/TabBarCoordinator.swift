//
//  TabBarCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI
import UIKit
import Combine

class TabBarCoordinator: BaseCoordinator {
    
    private let router: Router
    var subscriptions = Set<AnyCancellable>()
    
    var tabViewModel: TabBarViewModel?
    
    override init() {
        let navigationController = UINavigationController()
        navigationController.navigationBar.isHidden = true
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController = navigationController
        
        self.router = Router(navigationController: navigationController)
    }
    
    override func start() {
        tabViewModel = TabBarViewModel()
        
        guard let tabViewModel = tabViewModel else {
            fatalError("Emtpy tab view model")
        }
        configureActions(for: tabViewModel)
        
        buildChildCoordinators()
        let view = TabBarView().environmentObject(tabViewModel)
        let viewController = UIHostingController(rootView: view)
        router.push(viewController, isAnimated: true, onNavigateBack: isCompleted)
    }
}


extension TabBarCoordinator {
    private func buildChildCoordinators() {
        buildHomeTab()
        buildAddTab()
        buildFavoritesTab()
    }
    
    private func configureActions(for viewModel: TabBarViewModel) {
        
    }
    
    private func buildHomeTab() {
        guard let tabViewModel = tabViewModel else {
            fatalError("Emtpy tab view model")
        }
        
        let homeCoordinator = HomeCoordinator(router: router, viewModel: tabViewModel.homeViewModel)
        homeCoordinator.start()
        homeCoordinator.isCompleted = { [weak self] in
            self?.free(coordinator: homeCoordinator)
        }
        tabViewModel.childViews.append(homeCoordinator.view!)
    }
    
    private func buildAddTab() {
        guard let tabViewModel = tabViewModel else {
            fatalError("Emtpy tab view model")
        }
        
        let addPostCoordinator = AddPostCoordinator(router: router, viewModel: tabViewModel.addPostViewModel)
        addPostCoordinator.start()
        addPostCoordinator.isCompleted = { [weak self] in
            self?.free(coordinator: addPostCoordinator)
        }
        
        tabViewModel.childViews.append(addPostCoordinator.view!)
    }
    
    private func buildFavoritesTab() {
        guard let tabViewModel = tabViewModel else {
            fatalError("Emtpy tab view model")
        }
        
        let favoritesCoordinator = FavoritesCoordinator(router: router, viewModel: tabViewModel.favoritesViewModel)
        favoritesCoordinator.start()
        favoritesCoordinator.isCompleted = { [weak self] in
            self?.free(coordinator: favoritesCoordinator)
        }
        
        tabViewModel.childViews.append(favoritesCoordinator.view!)
    }
}
