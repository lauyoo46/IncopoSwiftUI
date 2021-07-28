//
//  Drawable.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import UIKit

protocol Drawable: AnyObject {
    var viewController: UIViewController? { get }
}

extension UIViewController: Drawable {
    var viewController: UIViewController? {
        return self
    }
}
