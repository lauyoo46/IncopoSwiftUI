//
//  AddCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import Combine
import SwiftUI

class AddPostCoordinator: BaseCoordinator {
    
    private let router: Router
    private let viewModel: AddPostViewModel
    var subscriptions = Set<AnyCancellable>()
    
    init(router: Router, viewModel: AddPostViewModel) {
        self.router = router
        self.viewModel = viewModel
    }
    
    override func start() {
        configureActions(for: viewModel)
        view = AnyView(AddPostView().environmentObject(viewModel))
    }
}


extension AddPostCoordinator {
    private func configureActions(for viewModel: AddPostViewModel) {
        
    }
}
