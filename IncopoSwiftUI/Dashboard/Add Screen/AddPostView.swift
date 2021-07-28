//
//  AddPoemView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct AddPostView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("normalBlueColor"), Color("darkBlueColor")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            Text("Hello Add Post!")
        }
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
    }
}
