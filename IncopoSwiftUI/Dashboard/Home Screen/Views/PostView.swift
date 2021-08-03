//
//  PostView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 30.07.2021.
//

import SwiftUI

struct PostView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    let author: Author
    let post: Post
    @State var isSeeMorePressed: Bool = false
    @State private var desiredHeight: CGFloat = 0
    
    var body: some View {
        
        VStack {
            VStack(alignment: .center) {
                Image(uiImage: author.avatar)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                    .clipShape(Circle())
                
                Text("\(author.firstName) \(author.lastName)")
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading) {
                
                Button(action: {
                    viewModel.seePostDetails(for: post, with: author)
                }, label: {
                    Text(post.title)
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .padding(.leading, 4)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                })
                
                
                IncopoReadOnlyTextView(text: post.content, desiredHeight: $desiredHeight)
                    .conditionalModifier(!isSeeMorePressed, transform: {
                        $0.frame(height: 155)
                    })
                    .conditionalModifier(isSeeMorePressed, transform: {
                        $0.frame(height: max(desiredHeight, 155))
                    })
                    .onTapGesture {
                        viewModel.seePostDetails(for: post, with: author)
                    }
                
                Button(action: {
                    isSeeMorePressed.toggle()
                }, label: {
                    Text(isSeeMorePressed ? "See less..." : "See more...")
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        .opacity(0.4)
                })
                .padding(.leading, 5)
            }
            .padding(.bottom, 20)
            
            HStack(spacing: 10) {
                Image(systemName: "hand.thumbsup")
                    .font(.system(size: 18))
                
                Text("\(post.noLikes) likes")
                    .font(.system(size: 18))
                    .padding(.trailing, 20)
                
                Image(systemName: "text.bubble")
                    .font(.system(size: 18))
                
                Text("\(post.noComments) comments")
                    .font(.system(size: 18))
                
                Spacer()
            }
            
            TextField("Add a comment...", text: $viewModel.commentText)
                .padding(.leading, 60)
                .frame(height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 22)
                        .stroke(Color.black.opacity(0.3), lineWidth: 1)
                )
                .overlay(
                    HStack {
                        Image("MirceaCartarescu")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 40)
                            
                            .clipShape(Circle())
                        
                        Spacer()
                    }.padding(.leading, 15)
                )
            
            
            
        }
        .padding(.horizontal, 20)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(author: Author(authorID: "1",
                                user: User(id: "1",
                                           emailAddress: "mircea@yahoo.com",
                                           password: "mircea",
                                           firstName: "Mircea",
                                           lastName: "Cartarescu",
                                           dateOfBirth: "08-03-1998"),
                                postIDs: ["1", "2"]),
                 post: Post(id: "1",
                            title: "Cand ai nevoie de dragoste",
                            content: """
                            când ai nevoie de dragoste nu ţi se dă dragoste.
                            când trebuie să iubeşti nu eşti iubit.
                            când eşti singur nu poţi să scapi de singurătate.
                            când eşti nefericit nu are sens să o spui.
                            
                            când vrei să strângi în braţe nu ai pe cine.
                            când vrei să dai un telefon sunt toţi plecaţi.
                            când eşti la pământ cine se interesează de tine?
                            cui îi pasă? cui o să-i pese vreodată?
                            
                            fii tu lângă mine, gândeşte-te la mine.
                            poartă-te tandru cu mine, nu mă chinui, nu mă face gelos,
                            nu mă părăsi, căci n-aş mai suporta încă o ruptură.
                            fii lângă mine, ţine cu mine.
                            
                            înţelege-mă, iubeşte-mă, nu-mi trebuie partuze, nici conversaţie,
                            fii iubita mea permanentă.
                            hai să uităm regula jocului, să nu mai ştim că sexul e o junglă.
                            să ne ataşăm, să ajungem la echilibru.
                            
                            dar nu sper nimic. nu primeşte dragoste
                            când ai nevoie de dragoste.
                            când trebuie să iubeşti nu eşti iubit.
                            când eşti la pamânt nici o femeie nu te cunoaşte.
                            """,
                            date: "30-07-1994",
                            location: "",
                            genre: .drama,
                            authorID: "1",
                            authorName: "Mircea Cartarescu",
                            noLikes: 303,
                            noComments: 29,
                            comments: [],
                            picture: UIImage())
        )
        .environmentObject(HomeViewModel())
    }
}


