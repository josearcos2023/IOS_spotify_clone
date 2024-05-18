//
//  SignUpView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 18/05/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State var counter: Int = 0
    @State var data: String = ""
    
    var elements: [SignUpForm] = [
            SignUpForm(title: "What’s your email?", input: "", helpText: "You’ll need to confirm this email later."),
            SignUpForm(title: "Create a password", input: "", helpText: "Use atleast 8 characters."),
            SignUpForm(title: "What’s your gender?", input: "", helpText: ""),
            SignUpForm(title: "What’s your name?", input: "", helpText: "This appears on your spotify profile"),
        ]
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
            
        VStack{
            ZStack{
                Color("dark").ignoresSafeArea()
                VStack{
                    ForEach(0..<elements.count, id: \.self) {index in
                        if index == counter {
                            VStack{
                                VStack (alignment: .leading){
                                    Text(elements[index].title)
                                        .foregroundStyle(.white)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .fontWeight(.bold)
                                    TextField("", text: $data)
                                        .padding()
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(.gray, lineWidth: 1)
                                            )
                                                .background(.gray)
                                                .padding(.bottom, 4)
                                                .foregroundColor(.white)
                                    Text(elements[index].helpText)
                                        .foregroundStyle(.white)
                                        .font(.caption2)
                                }
                                HStack{
                                    if counter != 0 {
                                        StepperButtom(counter: $counter, isNext: false, text: "Back")
                                    }
                                    Spacer()
                                    
                                    if counter != elements.count - 1 {
                                        StepperButtom(counter: $counter)
                                    }
                                }
                                .padding(.top, 30)
                            }
                        }
                    }
                    Spacer()
                }.padding(30)
            }
        }
        .navigationTitle("Create Account")
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                BackButtonView()
            }
        }
    }
}

#Preview {
    SignUpView()
}
