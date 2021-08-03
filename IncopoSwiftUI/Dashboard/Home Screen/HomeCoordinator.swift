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
        viewModel
            .seePostDetailsAction
            .sink { postAuthor in
                self.buildPostDetailsCoordinator(for: postAuthor.post, with: postAuthor.author)
            }
            .store(in: &subscriptions)
    }
    
    private func buildPostDetailsCoordinator(for post: Post, with author: Author) {
        let postDetailsCoordinator = PostDetailsCoordinator(router: router, post: post, author: author, homeViewModel: viewModel)
        postDetailsCoordinator.start()
        postDetailsCoordinator.isCompleted = { [weak self] in
            self?.free(coordinator: postDetailsCoordinator)
            self?.router.navigationController.navigationBar.isHidden = true
        }
    }
}
