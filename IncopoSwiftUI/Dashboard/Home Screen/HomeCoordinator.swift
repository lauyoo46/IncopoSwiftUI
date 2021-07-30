//
//  HomeCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import Combine
import SwiftUI

class HomeCoordinator: BaseCoordinator {
    
    private let router: Router
    private let viewModel: HomeViewModel
    var subscriptions = Set<AnyCancellable>()
    
    init(router: Router, viewModel: HomeViewModel) {
        self.router = router
        self.viewModel = viewModel
    }
    
    override func start() {
        configureActions(for: viewModel)
        view = AnyView(HomeView().environmentObject(viewModel))
    }
}


extension HomeCoordinator {
    private func configureActions(for viewModel: HomeViewModel) {
        
    }
}
