//
//  StartScreenCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI
import UIKit
import Combine

class StartScreenCoordinator: BaseCoordinator {
    
    let router: Routable
    private var subscriptions = Set<AnyCancellable>()
    
    init(router: Routable) {
        self.router = router
    }
    
    override func start() {
        let viewModel = StartScreenViewModel()
        configureActions(for: viewModel)
        
        let view = StartScreenView().environmentObject(viewModel)
        viewController = UIHostingController(rootView: view)
        router.push(viewController!, isAnimated: true, onNavigateBack: isCompleted)
    }
}

extension StartScreenCoordinator {
    private func configureActions(for viewModel: StartScreenViewModel) {
        
    }
}
