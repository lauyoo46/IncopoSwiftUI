//
//  AppCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import UIKit
import SwiftUI

class AppCoordinator: BaseCoordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        super.init()
    }
    
    override func start() {
        let navigationController = UINavigationController()
        navigationController.navigationBar.isHidden = true
        window.rootViewController = navigationController
        
        let router = Router(navigationController: navigationController)
        showStarScreen(within: router)
    }
    
    private func showStarScreen(within router: Routable) {
        let startScreenCoordinator = StartScreenCoordinator(router: router)
        self.store(coordinator: startScreenCoordinator)
        startScreenCoordinator.start()
        
        startScreenCoordinator.isCompleted = { [weak self] in
            self?.free(coordinator: startScreenCoordinator)
        }
    }
}
