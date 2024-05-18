//
//  ButtonView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 11/05/24.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var background: Color = .clear
    var color: Color = .white
    var borderColor: Color = .white
    var image: String = ""
    var body: some View {
        Button {
            print("evento tap")
        } label:{
            if image != "" {
                Image(image)
                    .resizable()
                    .frame(width: 18,height: 18)
                    .padding(.leading, 15)
            }
            Spacer()
            Text(title)
                .foregroundStyle(color)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.vertical,10)
                .padding(.horizontal,10)
            Spacer()
        }
        .background(RoundedRectangle(cornerRadius: 45)
            .stroke(borderColor, lineWidth: 1)
            .fill(background)
        )
        .padding(.horizontal,30)
    }
}
#Preview {
    ButtonView(title: "Continue with Google", background: Color(.primary), color: .black)
}
