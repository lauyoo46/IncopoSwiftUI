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
    
    override init() {
        let navigationController = UINavigationController()
        navigationController.navigationBar.isHidden = true
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController = navigationController
        
        self.router = Router(navigationController: navigationController)
    }
    
    override func start() {
        let viewModel = TabBarViewModel()
        configureActions(for: viewModel)
        
        buildChildCoordinators()
        let view = TabBarView().environmentObject(viewModel)
        let viewController = UIHostingController(rootView: view)
        router.push(viewController, isAnimated: true, onNavigateBack: isCompleted)
    }
}


extension TabBarCoordinator {
    private func buildChildCoordinators() {
        
    }
    
    private func configureActions(for viewModel: TabBarViewModel) {
        
    }
}
