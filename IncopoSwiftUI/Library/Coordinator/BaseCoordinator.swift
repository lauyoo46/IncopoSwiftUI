//
//  BaseCoordinator.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import UIKit
import SwiftUI

class BaseCoordinator : Coordinator {
    var childCoordinators : [Coordinator] = []
    var viewController: UIViewController? = nil
    var view: AnyView? = nil
    var isCompleted: (() -> ())?

    func start() {
        fatalError("Children should implement `start`.")
    }
}
