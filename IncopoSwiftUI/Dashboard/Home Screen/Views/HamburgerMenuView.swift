//
//  HamburgerMenuView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 03.08.2021.
//

import SwiftUI

struct HamburgerMenuView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                Image("MirceaCartarescu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 70)
                    .clipShape(Circle())
                
                    Text("Mircea Cartarescu")
                        .font(.system(size: 22))
                        .fontWeight(.medium)
                        .padding(.bottom, 5)
                    
                    Text("Scriitor")
                        .font(.system(size: 15))
                        .fontWeight(.regular)
            }
            .padding(.top, 30)
            
            Spacer()
            
            HamburgerMenuEntry(imageName: "person.circle", text: "My Profile")
            
            HamburgerMenuEntry(imageName: "magnifyingglass", text: "Search")
                .padding(.top, 20)
            
            HamburgerMenuEntry(imageName: "gearshape", text: "Settings")
                .padding(.top, 20)
            
            HamburgerMenuEntry(imageName: "envelope.open", text: "Contact Us")
                .padding(.top, 20)
            
            Spacer()
            Spacer()
            
            HamburgerMenuEntry(imageName: "arrow.uturn.backward.circle", text: "Sign Out")
                .padding(.bottom, 50)
        }
        .padding(.leading, 25)
        .frame(maxWidth: .infinity, alignment: .leading)
        .edgesIgnoringSafeArea(.all)
    }
}

struct HamburgerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerMenuView()
            .environmentObject(HomeViewModel())
    }
}

struct HamburgerMenuEntry: View {
    @EnvironmentObject var viewModel: HomeViewModel
    let imageName: String
    let text: String
    
    var body: some View {
        Button(action: {
            viewModel.createSearchScreen()
        }, label: {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.black)
                    .imageScale(.large)
                Text(text)
                    .foregroundColor(.black)
                    .font(.headline)
            }
        })
    }
}
