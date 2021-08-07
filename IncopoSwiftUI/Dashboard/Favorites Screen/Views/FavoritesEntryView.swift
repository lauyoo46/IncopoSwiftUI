//
//  FavoritesEntryView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 05.08.2021.
//

import SwiftUI

struct FavoritesEntryView: View {
    let post: Post
    let user: User
    
    var body: some View {
        
        HStack {
            Image(uiImage: user.avatar)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("\(user.firstName) \(user.lastName)")
                    .fontWeight(.medium)
                    .padding(.bottom, 5)
                
                Text(post.title)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct FavoritesEntryView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesEntryView(post: Post(id: "1",
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
                                      picture: UIImage()),
                           user: User(id: "1",
                                      emailAddress: "mircea@yahoo.com",
                                      password: "mircea",
                                      firstName: "Mircea",
                                      lastName: "Cartarescu",
                                      dateOfBirth: "08-03-1998"))
            .previewLayout(.sizeThatFits)
    }
}
