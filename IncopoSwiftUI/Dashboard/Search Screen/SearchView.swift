//
//  SearchView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("normalBlueColor"), Color("darkBlueColor")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            Text("Hello Search!")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
