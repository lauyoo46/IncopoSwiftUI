//
//  Router.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import UIKit

typealias NavigationBackClosure = (() -> ())

protocol Routable: AnyObject {
    func push(_ drawable: Drawable, isAnimated: Bool, onNavigateBack: NavigationBackClosure?)
    func pop(_ isAnimated: Bool)
    func popToRoot(_ isAnimated: Bool)
    func present(_ drawable: UIViewController, isAnimated: Bool, onNavigateBack closure: NavigationBackClosure?)
}


class Router: NSObject {
    let navigationController: UINavigationController
    private var closures: [String: NavigationBackClosure] = [:]
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init()
        self.navigationController.delegate = self
    }
    
    private func executeClosure(_ viewController: UIViewController) {
        guard let closure = closures.removeValue(forKey: viewController.description) else { return }
        closure()
    }
}


//  MARK:- Routable protocol
extension Router: Routable {
    func push(_ drawable: Drawable, isAnimated: Bool, onNavigateBack closure: NavigationBackClosure?) {
        guard let viewController = drawable.viewController else {
            return
        }
        
        if let closure = closure {
            closures.updateValue(closure, forKey: viewController.description)
        }
        navigationController.pushViewController(viewController, animated: isAnimated)
    }
    
    func pop(_ isAnimated: Bool) {
        navigationController.popViewController(animated: isAnimated)
    }
    
    func popToRoot(_ isAnimated: Bool) {
        navigationController.popToRootViewController(animated: isAnimated)
    }
    
    func present(_ drawable: UIViewController, isAnimated: Bool, onNavigateBack closure: NavigationBackClosure?) {
        drawable.modalPresentationStyle = .fullScreen
        navigationController.present(drawable, animated: isAnimated, completion: closure)
    }
}


//  MARK:- UINavigationControllerDelegate
extension Router : UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        guard let previousController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        guard !navigationController.viewControllers.contains(previousController) else {
            return
        }
        
        executeClosure(previousController)
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        navigationController.interactivePopGestureRecognizer?.isEnabled = false
    }
}
