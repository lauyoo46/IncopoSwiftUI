//
//  FavoritesCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import Combine
import SwiftUI

class FavoritesCoordinator: BaseCoordinator {
    
    private let router: Router
    private let viewModel: FavoritesViewModel
    var subscriptions = Set<AnyCancellable>()
    
    init(router: Router, viewModel: FavoritesViewModel) {
        self.router = router
        self.viewModel = viewModel
    }
    
    override func start() {
        configureActions(for: viewModel)
        view = AnyView(FavoritesView().environmentObject(viewModel))
    }
}


extension FavoritesCoordinator {
    private func configureActions(for viewModel: FavoritesViewModel) {
        
    }
}
