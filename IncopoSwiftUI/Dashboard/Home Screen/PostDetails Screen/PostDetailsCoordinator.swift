//
//  PostDetailsCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 02.08.2021.
//

import Foundation
import Combine
import SwiftUI

class PostDetailsCoordinator: BaseCoordinator {
    
    private let router: Router
    private let post: Post
    private let author: Author
    private let homeViewModel: HomeViewModel
    private var subscriptions = Set<AnyCancellable>()
    
    init(router: Router, post: Post, author: Author, homeViewModel: HomeViewModel) {
        self.router = router
        self.post = post
        self.author = author
        self.homeViewModel = homeViewModel
        router.navigationController.navigationBar.isHidden = false
    }
    
    override func start() {
        let postDetailsViewModel = PostDetailsViewModel()
        configureActions(for: postDetailsViewModel)
        view = AnyView(PostDetailsView(post: post, author: author)
                        .environmentObject(postDetailsViewModel)
                        .environmentObject(homeViewModel))
        
        let viewController = UIHostingController(rootView: view)
        configureNavBar(for: viewController)
        
        router.push(viewController, isAnimated: true, onNavigateBack: isCompleted)
    }
}


extension PostDetailsCoordinator {
    private func configureActions(for viewModel: PostDetailsViewModel) {
        
    }
    
    private func configureNavBar(for viewController: UIHostingController<AnyView?>) {
        let backButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"),
                                         style: .plain,
                                         target: self,
                                         action: #selector(dismiss))
        backButton.tintColor = .black
        
        viewController.navigationItem.setLeftBarButton(backButton, animated: false)
        
        router.navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        router.navigationController.navigationBar.shadowImage = UIImage()
        router.navigationController.view.backgroundColor = .clear
    }
    
    @objc private func dismiss() {
        router.navigationController.navigationBar.isHidden = true
        isCompleted?()
        router.pop(true)
    }
}
