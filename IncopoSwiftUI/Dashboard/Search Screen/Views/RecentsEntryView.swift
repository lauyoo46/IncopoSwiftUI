//
//  RecentsEntryView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 06.08.2021.
//

import SwiftUI

struct RecentsEntryView: View {
    let poemName: String
    
    var body: some View {
        HStack {
            Text(poemName)
                .font(.headline)
                .fontWeight(.medium)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "xmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 15)
                    .foregroundColor(.black)
            })
        }
        .padding(.horizontal, 15)
    }
}

struct RecentsEntryView_Previews: PreviewProvider {
    static var previews: some View {
        RecentsEntryView(poemName: "Chaos Theory Homeostasis I")
    }
}
