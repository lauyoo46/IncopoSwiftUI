//
//  ConditionalModifier+Extension.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 02.08.2021.
//

import Foundation
import SwiftUI

extension View {
    
    @ViewBuilder func conditionalModifier<Content: View>(_ condition: Bool,
                                                         transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
