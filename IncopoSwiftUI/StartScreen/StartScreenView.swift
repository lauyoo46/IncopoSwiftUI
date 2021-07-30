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
        VStack {
            Image("writerHand")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 60)
            
            Text("Incopo")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text("Where people post their poems")
                .font(.body)
                .fontWeight(.medium)
                .padding(.bottom, 70)
                .opacity(0.6)
            
            VStack(alignment: .leading) {
                
                TextField("Username", text: $viewModel.username)
                    .frame(height: 30)
                    .cornerRadius(22)
                    .padding(.bottom, 10)
                
                Divider()
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 2)
                    .background(Color.black)
                    .opacity(0.5)
                
                SecureField("Password", text: $viewModel.password)
                    .frame(height: 30)
                    .cornerRadius(22)
                    .padding(.bottom, 40)
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot password?")
                            .font(.system(size: 15))
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .opacity(0.3)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        viewModel.login()
                    }, label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .aspectRatio(contentMode: .fit)
                    })
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Register")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    })
                }
                .padding(.bottom, 30)
                
                HStack {
                    Spacer()
                    
                    Text("or")
                        .opacity(0.3)
                    
                    Spacer()
                }
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            Text("Login with Google")
                .fontWeight(.semibold)
                .padding(.bottom, 20)
        }
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
            .environmentObject(StartScreenViewModel())
    }
}
