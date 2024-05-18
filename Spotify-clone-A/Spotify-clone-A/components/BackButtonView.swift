//
//  BackButtonView.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 18/05/24.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button{
            dismiss()
        } label: {
            Image(systemName: "arrowshape.backward")
                .padding(8)
                .foregroundStyle(.gray)
                .background(.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    BackButtonView()
}
