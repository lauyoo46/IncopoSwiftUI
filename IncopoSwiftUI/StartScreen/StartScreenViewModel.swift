//
//  StartScreenViewModel.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import Foundation
import Combine

class StartScreenViewModel: ObservableObject {
    
    @Published var username: String = ""
    @Published var password: String = ""
    
    var submitLogin = PassthroughSubject<Void, Never>()
    
    func login() {
        submitLogin.send()
    }
}
