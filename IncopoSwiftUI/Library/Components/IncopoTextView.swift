//
//  IncopoTextView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 30.07.2021.
//

import Foundation

import SwiftUI

struct IncopoReadOnlyTextView: UIViewRepresentable {
    
    var text: String
    @Binding var desiredHeight: CGFloat
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        
        textView.isSelectable = false
        textView.isUserInteractionEnabled = false
        textView.font = UIFont(name: "Avenir-Book", size: 18)
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        
        let fixedWidth = uiView.frame.size.width
        let newSize = uiView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        
        DispatchQueue.main.async {
            self.desiredHeight = newSize.height
        }
    }
}


struct IncopoTextView: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        
        textView.font = UIFont(name: "Avenir-Book", size: 18)
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}
