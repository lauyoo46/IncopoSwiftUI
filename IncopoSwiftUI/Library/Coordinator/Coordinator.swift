//
//  Coordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import UIKit
import SwiftUI

protocol Coordinator: AnyObject {
    var viewController: UIViewController? { get set }
    var view: AnyView? { get set }
    var childCoordinators : [Coordinator] { get set }
    func start()
}

extension Coordinator {
    @discardableResult func store(coordinator: Coordinator) -> Coordinator {
        childCoordinators.append(coordinator)
        return coordinator
    }

    func free(coordinator: Coordinator) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator }
    }
}
