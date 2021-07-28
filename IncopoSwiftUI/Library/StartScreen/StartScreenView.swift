//
//  StartScreenView.swift
//  IncopoSwiftUI
//
//  Created by Laurentiu Ile on 28.07.2021.
//

import SwiftUI

struct StartScreenView: View {
    @EnvironmentObject var viewModel: StartScreenViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("normalBlueColor"), Color("darkBlueColor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Text("Incopo")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.vertical, 20)
                
                Image("humanWriter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .padding(.bottom, 100)
                
                TextField("Username", text: $viewModel.username)
                    .padding(.horizontal, 10)
                    .frame(height: 40)
                    .background(Color("whiteColor").opacity(0.7))
                    .autocapitalization(.none)
                    .cornerRadius(10)
                    .padding(.bottom, 10)
                
                TextField("Password", text: $viewModel.username)
                    .padding(.horizontal, 10)
                    .frame(height: 40)
                    .background(Color("whiteColor").opacity(0.7))
                    .autocapitalization(.none)
                    .cornerRadius(10)
                    .padding(.bottom, 30)
                
                Button(action: {
                    viewModel.login()
                }, label: {
                    Text("Login")
                        .frame(minWidth: 0,
                               maxWidth: .infinity,
                               minHeight: 0,
                               maxHeight: 50)
                        
                        .font(.system(size: 15))
                        .clipShape(Capsule())
                        .background(Color("navyBlueColor"))
                        .foregroundColor(Color("whiteColor"))
                        .cornerRadius(22)
                })
                
                HStack(spacing: 5) {
                    Divider()
                        .frame(minWidth: 0,
                               maxWidth: .infinity,
                               maxHeight: 1)
                        .background(Color("whiteColor"))
                    
                    Text("or")
                        .foregroundColor(Color("whiteColor"))
                        .font(.system(size: 15))
                    
                    Divider()
                        .frame(minWidth: 0,
                               maxWidth: .infinity,
                               maxHeight: 1)
                        .background(Color("whiteColor"))
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Register")
                        .frame(minWidth: 0,
                               maxWidth: .infinity,
                               minHeight: 0,
                               maxHeight: 50)
                        
                        .font(.system(size: 15))
                        .clipShape(Capsule())
                        .background(Color("navyBlueColor"))
                        .foregroundColor(Color("whiteColor"))
                        .cornerRadius(22)
                })
                
                Spacer()
            }
            .padding(.horizontal, 60)
            .frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
            .environmentObject(StartScreenViewModel())
    }
}
