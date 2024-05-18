//
//  SignInView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 11/05/24.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        NavigationStack{
            VStack {
                ZStack {
                    Color("dark").ignoresSafeArea()
                    VStack {
                        Image("bg-login")
                            .resizable()
                            .frame(height: 250)
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 53,height: 53)
                        
                        Text("Millions of songs.")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.top)
                        
                        Text("Free on Spotify")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                        VStack(spacing:20) {
                            ButtonView(title:"Sign in free", background: Color(.primary), color: .black)
                            ButtonView(title:"Continue with Google", image: "google")
                            ButtonView(title:"Continue with Facebook", image:"facebook")
                            ButtonView(title:"Continue with Apple", image: "apple")
                            NavigationLink("Login", destination: SignUpView())
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                        }.padding(.top)
                    }
                }
            }
            
            
        }
       
    }
}

#Preview {
    SignInView()
}
