//
//  AddPoemView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct AddPostView: View {
    @EnvironmentObject var viewModel: AddPostViewModel
    let user = SampleAuthors().getAuthors()[0].user
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                
                }, label: {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .scaledToFit()
                })
                .opacity(0)
                .disabled(true)
                
                Spacer()
                
                Text("Create a Post")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Post")
                        .font(.headline)
                        .foregroundColor(.black)
                })
            }
            
            HStack {
                Image(uiImage: user.avatar)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("\(user.firstName) \(user.lastName)")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.bottom, 5)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Public")
                            .fontWeight(.medium)
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.horizontal, 10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    })
                }
            }
            
            TextField("Post Title", text: $viewModel.postTitle)
                .frame(height: 40)
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            IncopoTextView(text: $viewModel.postContent)
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 40)
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
            .environmentObject(AddPostViewModel())
    }
}
