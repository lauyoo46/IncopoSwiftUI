//
//  SearchCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import Combine
import SwiftUI

class SearchCoordinator: BaseCoordinator {
    
    private let router: Router
    private let viewModel: SearchViewModel
    var subscriptions = Set<AnyCancellable>()
    
    init(router: Router, viewModel: SearchViewModel) {
        self.router = router
        self.viewModel = viewModel
        
        router.navigationController.navigationBar.isHidden = false
    }
    
    override func start() {
        configureActions(for: viewModel)
        view = AnyView(SearchView().environmentObject(viewModel))
        
        let viewController = UIHostingController(rootView: view)
        configureNavBar(for: viewController)
        
        router.push(viewController, isAnimated: true, onNavigateBack: isCompleted)
    }
}


extension SearchCoordinator {
    private func configureActions(for viewModel: SearchViewModel) {
        
    }
    
    private func configureNavBar(for viewController: UIHostingController<AnyView?>) {
        let backButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"),
                                         style: .plain,
                                         target: self,
                                         action: #selector(dismiss))
        backButton.tintColor = .black
        
        viewController.navigationItem.setLeftBarButton(backButton, animated: false)
        
        let titleLabel = UILabel()
        titleLabel.text = "Search a post"
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        titleLabel.backgroundColor = .clear
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        
        viewController.navigationItem.titleView = titleLabel
        
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
